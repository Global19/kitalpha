/*******************************************************************************
 * Copyright (c) 2014 Thales Global Services S.A.S.
 *  All rights reserved. This program and the accompanying materials
 *  are made available under the terms of the Eclipse Public License v1.0
 *  which accompanies this distribution, and is available at
 *  http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *  Thales Global Services S.A.S - initial API and implementation
 ******************************************************************************/
package org.polarsys.kitalpha.ad.viewpoint.dsl.cs.text.ui.contentassist;

import java.net.URL;
import java.util.List;

import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.viewers.StyledString;
import org.eclipse.swt.graphics.Image;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.ui.editor.contentassist.ContentAssistContext;
import org.eclipse.xtext.ui.editor.contentassist.ICompletionProposalAcceptor;
import org.osgi.framework.Bundle;
import org.polarsys.kitalpha.ad.viewpoint.dsl.as.activityexplorer.model.ViewpointActivityExplorer.PageExtension;
import org.polarsys.kitalpha.ad.viewpoint.dsl.as.activityexplorer.model.ViewpointActivityExplorer.SectionExtension;
import org.polarsys.kitalpha.ad.viewpoint.dsl.cs.text.ui.constants.IActivityExplorerExtensionsIDs;

import com.google.common.collect.Iterables;

/**
 * 
 * @author Faycal Abka
 *
 */
public class ActivityexplorerProposalProvider extends AbstractActivityexplorerProposalProvider {
	
	private static final String EXTENSION_PATH_ICON = "icons/obj16/extension_obj.gif";
	private static final String BUNDLE_EXTENSION_ICON = "org.eclipse.pde.ui";
	private static final Bundle PDE_CORE_UI_BUNDLE = Platform.getBundle(BUNDLE_EXTENSION_ICON);
	private static final URL ICONURL = FileLocator.find(PDE_CORE_UI_BUNDLE, new Path(EXTENSION_PATH_ICON), null);
	private static final Image EXTENSION_ICON = ImageDescriptor.createFromURL(ICONURL).createImage();
	
	
	//TODO restrect the proposal of keyword following where they appear
	@Override
	public void completeKeyword(Keyword keyword, ContentAssistContext contentAssistContext,
			ICompletionProposalAcceptor acceptor) {
		
		ICompletionProposal proposal;
		
		if (keyword.getValue().equals("activity")) {
			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, "explorer");
			acceptProposal(proposal, contentAssistContext, acceptor);
			return;
		}
		
		if (keyword.getValue().equals("tab")) {
			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, "name");
			acceptProposal(proposal, contentAssistContext, acceptor);
			return;
		}
		
		if (keyword.getValue().equals("image")) {

			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, "off", ":");
			acceptProposal(proposal, contentAssistContext, acceptor);
			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, "on", ":");
			acceptProposal(proposal, contentAssistContext, acceptor);
			return;
		}
		
		if (keyword.getValue().equals("predicated")) {
			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, ":");
			acceptProposal(proposal, contentAssistContext, acceptor);
			return;
		}
		
		if (keyword.getValue().equals("show")) {
			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, "viewer", ":");
			acceptProposal(proposal, contentAssistContext, acceptor);
			return;
		}
		
		if (keyword.getValue().equals("extended")) {
			EObject parentSemanticModel = getParentSemanticNodeModel(contentAssistContext);
			
			if (parentSemanticModel instanceof PageExtension)
			{
				proposal = createProposalForComplexKeyword(keyword, contentAssistContext, "page");
				acceptProposal(proposal, contentAssistContext, acceptor);
				return;
			}
			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, "section");
			acceptProposal(proposal, contentAssistContext, acceptor);
			return;
		}
		
		if (keyword.getValue().equals("icon")) {
			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, ":");
			acceptProposal(proposal, contentAssistContext, acceptor);
			return;
		}
		
		if (keyword.getValue().equals("filtering")) {
			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, ":");
			acceptProposal(proposal, contentAssistContext, acceptor);
			return;
		}
		
		if (keyword.getValue().equals("expanded")) {
			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, ":");
			acceptProposal(proposal, contentAssistContext, acceptor);
			return;
		}
		
		if (keyword.getValue().equals("file")) {
			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, "extension", ":");
			acceptProposal(proposal, contentAssistContext, acceptor);
			return;
		}
		
		if (keyword.getValue().equals("page")) {
			proposal = createCompletionProposal(keyword.getValue(), getKeywordDisplayString(keyword.getValue()),getImage(keyword), contentAssistContext);
			acceptProposal(proposal, contentAssistContext, acceptor);
			proposal = createProposalForComplexKeyword(keyword, contentAssistContext, "extensions", ":");
			acceptProposal(proposal, contentAssistContext, acceptor);
			return;
		}
		
		if (keyword.getValue().equals("section")) {
			
			EObject parentSemanticModel = getParentSemanticNodeModel(contentAssistContext);
			
			if (parentSemanticModel instanceof SectionExtension)
			{
				proposal = createProposalForComplexKeyword(keyword, contentAssistContext, "extensions", ":");
				acceptProposal(proposal, contentAssistContext, acceptor);
				return;
			}
			
			proposal = createCompletionProposal(keyword.getValue(), getKeywordDisplayString(keyword.getValue()),getImage(keyword), contentAssistContext);
			acceptProposal(proposal, contentAssistContext, acceptor);
			
			return;
		}
		
		super.completeKeyword(keyword, contentAssistContext, acceptor);
	}
	
	private EObject getParentSemanticNodeModel(ContentAssistContext contentAssistContext)
	{
		INode node = contentAssistContext.getCurrentNode();
		return node.getParent().getSemanticElement();
	}
	
	
	
	protected StyledString getKeywordDisplayString(String keyword) {
		return new StyledString(keyword);
	}
	
	private void acceptProposal(ICompletionProposal proposal, ContentAssistContext contentAssistContext, ICompletionProposalAcceptor acceptor) {
		getPriorityHelper().adjustKeywordPriority(proposal, contentAssistContext.getPrefix());
		acceptor.accept(proposal);
	}
	
	private ICompletionProposal createProposalForComplexKeyword(Keyword keyword, ContentAssistContext contentAssistContext, String... suffixes){
		StringBuffer buf = new StringBuffer(keyword.getValue());
		
		for (String suffix : suffixes) {
			buf.append(" ").append(suffix);
		}
		
		return createCompletionProposal(buf.toString(), getKeywordDisplayString(buf.toString()),
				getImage(keyword), contentAssistContext);
	}
	

	@Override
	public void completePage_ImagePathOn(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		complete_iconPath(model, assignment, context, acceptor);
	}
	
	@Override
	public void completePage_ImagePathOff(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		complete_iconPath(model, assignment, context, acceptor);
	}
	
	@Override
	public void completeOverview_ImagePathOn(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		complete_iconPath(model, assignment, context, acceptor);
	}
	
	@Override
	public void completeOverview_ImagePathOff(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		complete_iconPath(model, assignment, context, acceptor);
	}
	
	
	@Override
	public void completeActivity_ImagePathOff(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		complete_iconPath(model, assignment, context, acceptor);
	}
	
	@Override
	public void completePageExtension_ExtendedPageID(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		Iterable<String> pageIds = ActivityExplorerContentAssistHelper.getActivityExplorerExtensions(IActivityExplorerExtensionsIDs.PAGE);
		List<String> modelPageIds = ActivityExplorerContentAssistHelper.getNewDefinedPages(model);
		
		pageIds = Iterables.concat(pageIds, modelPageIds);
		
		for (String id : pageIds) {
			ICompletionProposal proposal = createCompletionProposal(id, getKeywordDisplayString(id), EXTENSION_ICON, context);
			acceptor.accept(proposal);
		}
	}
	
	@Override
	public void completeSectionExtension_ExtendedSectionID(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		Iterable<String> sectionIds = ActivityExplorerContentAssistHelper.getActivityExplorerExtensions(IActivityExplorerExtensionsIDs.SECTION);
		List<String> modelSectionIds = ActivityExplorerContentAssistHelper.getNewDefinedSections(model);
		
		sectionIds = Iterables.concat(sectionIds, modelSectionIds);
		
		for (String id : sectionIds) {
			ICompletionProposal proposal = createCompletionProposal(id, getKeywordDisplayString(id), EXTENSION_ICON, context);
			acceptor.accept(proposal);
		}
	}
	
	
	public void completePage_Index(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		int index = ActivityExplorerContentAssistHelper.getNextIndexPage(model);
		
		ICompletionProposal proposal = createCompletionProposal(String.valueOf(index), getKeywordDisplayString(String.valueOf(index)), null, context);
		acceptor.accept(proposal);
	}
	
	
	
}