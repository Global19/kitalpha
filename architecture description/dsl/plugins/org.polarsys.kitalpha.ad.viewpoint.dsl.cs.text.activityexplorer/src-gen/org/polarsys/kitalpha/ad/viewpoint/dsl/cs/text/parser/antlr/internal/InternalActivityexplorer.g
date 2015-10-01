/*
 * generated by Xtext
 */
grammar InternalActivityexplorer;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.polarsys.kitalpha.ad.viewpoint.dsl.cs.text.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.polarsys.kitalpha.ad.viewpoint.dsl.cs.text.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.polarsys.kitalpha.ad.viewpoint.dsl.cs.text.services.ActivityexplorerGrammarAccess;

}

@parser::members {

 	private ActivityexplorerGrammarAccess grammarAccess;
 	
    public InternalActivityexplorerParser(TokenStream input, ActivityexplorerGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "ViewpointActivityExplorer";	
   	}
   	
   	@Override
   	protected ActivityexplorerGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleViewpointActivityExplorer
entryRuleViewpointActivityExplorer returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getViewpointActivityExplorerRule()); }
	 iv_ruleViewpointActivityExplorer=ruleViewpointActivityExplorer 
	 { $current=$iv_ruleViewpointActivityExplorer.current; } 
	 EOF 
;

// Rule ViewpointActivityExplorer
ruleViewpointActivityExplorer returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getViewpointActivityExplorerAccess().getViewpointActivityExplorerAction_0(),
            $current);
    }
)	otherlv_1='activity-explorer' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getViewpointActivityExplorerAccess().getActivityExplorerKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getViewpointActivityExplorerAccess().getNameFQNParserRuleCall_2_0()); 
	    }
		lv_name_2_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getViewpointActivityExplorerRule());
	        }
       		set(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getViewpointActivityExplorerAccess().getLeftCurlyBracketKeyword_3());
    }
(	otherlv_4='pages' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getViewpointActivityExplorerAccess().getPagesKeyword_4_0());
    }
	otherlv_5='{' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getViewpointActivityExplorerAccess().getLeftCurlyBracketKeyword_4_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getViewpointActivityExplorerAccess().getOwnedPagesPageParserRuleCall_4_2_0()); 
	    }
		lv_ownedPages_6_0=rulePage		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getViewpointActivityExplorerRule());
	        }
       		add(
       			$current, 
       			"ownedPages",
        		lv_ownedPages_6_0, 
        		"Page");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_7='}' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getViewpointActivityExplorerAccess().getRightCurlyBracketKeyword_4_3());
    }
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getViewpointActivityExplorerAccess().getOwnedPagesPageExtensionParserRuleCall_5_0()); 
	    }
		lv_ownedPages_8_0=rulePageExtension		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getViewpointActivityExplorerRule());
	        }
       		add(
       			$current, 
       			"ownedPages",
        		lv_ownedPages_8_0, 
        		"PageExtension");
	        afterParserOrEnumRuleCall();
	    }

)
)*(
(
		{ 
	        newCompositeNode(grammarAccess.getViewpointActivityExplorerAccess().getOwnedSectionExtensionsSectionExtensionParserRuleCall_6_0()); 
	    }
		lv_ownedSectionExtensions_9_0=ruleSectionExtension		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getViewpointActivityExplorerRule());
	        }
       		add(
       			$current, 
       			"ownedSectionExtensions",
        		lv_ownedSectionExtensions_9_0, 
        		"SectionExtension");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_10='}' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getViewpointActivityExplorerAccess().getRightCurlyBracketKeyword_7());
    }
)
;







// Entry rule entryRulePage
entryRulePage returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPageRule()); }
	 iv_rulePage=rulePage 
	 { $current=$iv_rulePage.current; } 
	 EOF 
;

// Rule Page
rulePage returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getPageAccess().getPageAction_0(),
            $current);
    }
)	otherlv_1='page' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getPageAccess().getPageKeyword_1());
    }
(
(
		lv_name_2_0=RULE_ID
		{
			newLeafNode(lv_name_2_0, grammarAccess.getPageAccess().getNameIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"ID");
	    }

)
)	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getPageAccess().getLeftCurlyBracketKeyword_3());
    }
(	otherlv_4='description' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getPageAccess().getDescriptionKeyword_4_0());
    }
(
(
		lv_description_5_0=RULE_STRING
		{
			newLeafNode(lv_description_5_0, grammarAccess.getPageAccess().getDescriptionSTRINGTerminalRuleCall_4_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"description",
        		lv_description_5_0, 
        		"STRING");
	    }

)
))?(	otherlv_6='file-extension' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getPageAccess().getFileExtensionKeyword_5_0());
    }
(
(
		lv_fileExtensions_7_0=RULE_STRING
		{
			newLeafNode(lv_fileExtensions_7_0, grammarAccess.getPageAccess().getFileExtensionsSTRINGTerminalRuleCall_5_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"fileExtensions",
        		lv_fileExtensions_7_0, 
        		"STRING");
	    }

)
))?(	otherlv_8='id' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getPageAccess().getIdKeyword_6_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getActivityExplorerItemIDFQNParserRuleCall_6_1_0()); 
	    }
		lv_activityExplorerItemID_9_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		set(
       			$current, 
       			"activityExplorerItemID",
        		lv_activityExplorerItemID_9_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_10='label' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getPageAccess().getLabelKeyword_7_0());
    }
(
(
		lv_label_11_0=RULE_STRING
		{
			newLeafNode(lv_label_11_0, grammarAccess.getPageAccess().getLabelSTRINGTerminalRuleCall_7_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"label",
        		lv_label_11_0, 
        		"STRING");
	    }

)
))?	otherlv_12='index' 
    {
    	newLeafNode(otherlv_12, grammarAccess.getPageAccess().getIndexKeyword_8());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getIndexEIntParserRuleCall_9_0()); 
	    }
		lv_index_13_0=ruleEInt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		set(
       			$current, 
       			"index",
        		lv_index_13_0, 
        		"EInt");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getOwnedOverviewOverviewParserRuleCall_10_0()); 
	    }
		lv_ownedOverview_14_0=ruleOverview		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		set(
       			$current, 
       			"ownedOverview",
        		lv_ownedOverview_14_0, 
        		"Overview");
	        afterParserOrEnumRuleCall();
	    }

)
)?(	otherlv_15='header' 
    {
    	newLeafNode(otherlv_15, grammarAccess.getPageAccess().getHeaderKeyword_11_0());
    }
	otherlv_16='{' 
    {
    	newLeafNode(otherlv_16, grammarAccess.getPageAccess().getLeftCurlyBracketKeyword_11_1());
    }
(	otherlv_17='image-on' 
    {
    	newLeafNode(otherlv_17, grammarAccess.getPageAccess().getImageOnKeyword_11_2_0());
    }
	otherlv_18=':' 
    {
    	newLeafNode(otherlv_18, grammarAccess.getPageAccess().getColonKeyword_11_2_1());
    }
(
(
		lv_imagePathOn_19_0=RULE_STRING
		{
			newLeafNode(lv_imagePathOn_19_0, grammarAccess.getPageAccess().getImagePathOnSTRINGTerminalRuleCall_11_2_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"imagePathOn",
        		lv_imagePathOn_19_0, 
        		"STRING");
	    }

)
))?(	otherlv_20='image-off' 
    {
    	newLeafNode(otherlv_20, grammarAccess.getPageAccess().getImageOffKeyword_11_3_0());
    }
	otherlv_21=':' 
    {
    	newLeafNode(otherlv_21, grammarAccess.getPageAccess().getColonKeyword_11_3_1());
    }
(
(
		lv_imagePathOff_22_0=RULE_STRING
		{
			newLeafNode(lv_imagePathOff_22_0, grammarAccess.getPageAccess().getImagePathOffSTRINGTerminalRuleCall_11_3_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"imagePathOff",
        		lv_imagePathOff_22_0, 
        		"STRING");
	    }

)
))?	otherlv_23='}' 
    {
    	newLeafNode(otherlv_23, grammarAccess.getPageAccess().getRightCurlyBracketKeyword_11_4());
    }
)?(	otherlv_24='tab-name' 
    {
    	newLeafNode(otherlv_24, grammarAccess.getPageAccess().getTabNameKeyword_12_0());
    }
(
(
		lv_tabName_25_0=RULE_STRING
		{
			newLeafNode(lv_tabName_25_0, grammarAccess.getPageAccess().getTabNameSTRINGTerminalRuleCall_12_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"tabName",
        		lv_tabName_25_0, 
        		"STRING");
	    }

)
))?(	otherlv_26='predicated' 
    {
    	newLeafNode(otherlv_26, grammarAccess.getPageAccess().getPredicatedKeyword_13_0());
    }
	otherlv_27=':' 
    {
    	newLeafNode(otherlv_27, grammarAccess.getPageAccess().getColonKeyword_13_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getHasPredicateEBooleanParserRuleCall_13_2_0()); 
	    }
		lv_hasPredicate_28_0=ruleEBoolean		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		set(
       			$current, 
       			"hasPredicate",
        		lv_hasPredicate_28_0, 
        		"EBoolean");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_29='show-viewer' 
    {
    	newLeafNode(otherlv_29, grammarAccess.getPageAccess().getShowViewerKeyword_14_0());
    }
	otherlv_30=':' 
    {
    	newLeafNode(otherlv_30, grammarAccess.getPageAccess().getColonKeyword_14_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getShowViewerEBooleanParserRuleCall_14_2_0()); 
	    }
		lv_showViewer_31_0=ruleEBoolean		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		set(
       			$current, 
       			"showViewer",
        		lv_showViewer_31_0, 
        		"EBoolean");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_32='sections' 
    {
    	newLeafNode(otherlv_32, grammarAccess.getPageAccess().getSectionsKeyword_15_0());
    }
	otherlv_33='{' 
    {
    	newLeafNode(otherlv_33, grammarAccess.getPageAccess().getLeftCurlyBracketKeyword_15_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getOwnedSectionsSectionParserRuleCall_15_2_0()); 
	    }
		lv_ownedSections_34_0=ruleSection		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		add(
       			$current, 
       			"ownedSections",
        		lv_ownedSections_34_0, 
        		"Section");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_35='}' 
    {
    	newLeafNode(otherlv_35, grammarAccess.getPageAccess().getRightCurlyBracketKeyword_15_3());
    }
)?	otherlv_36='}' 
    {
    	newLeafNode(otherlv_36, grammarAccess.getPageAccess().getRightCurlyBracketKeyword_16());
    }
)
;





// Entry rule entryRuleSection
entryRuleSection returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getSectionRule()); }
	 iv_ruleSection=ruleSection 
	 { $current=$iv_ruleSection.current; } 
	 EOF 
;

// Rule Section
ruleSection returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getSectionAccess().getSectionAction_0(),
            $current);
    }
)	otherlv_1='section' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getSectionAccess().getSectionKeyword_1());
    }
(
(
		lv_name_2_0=RULE_ID
		{
			newLeafNode(lv_name_2_0, grammarAccess.getSectionAccess().getNameIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getSectionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"ID");
	    }

)
)	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getSectionAccess().getLeftCurlyBracketKeyword_3());
    }
(	otherlv_4='description' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getSectionAccess().getDescriptionKeyword_4_0());
    }
(
(
		lv_description_5_0=RULE_STRING
		{
			newLeafNode(lv_description_5_0, grammarAccess.getSectionAccess().getDescriptionSTRINGTerminalRuleCall_4_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getSectionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"description",
        		lv_description_5_0, 
        		"STRING");
	    }

)
))?(	otherlv_6='id' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getSectionAccess().getIdKeyword_5_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionAccess().getActivityExplorerItemIDFQNParserRuleCall_5_1_0()); 
	    }
		lv_activityExplorerItemID_7_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionRule());
	        }
       		set(
       			$current, 
       			"activityExplorerItemID",
        		lv_activityExplorerItemID_7_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_8='label' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getSectionAccess().getLabelKeyword_6_0());
    }
(
(
		lv_label_9_0=RULE_STRING
		{
			newLeafNode(lv_label_9_0, grammarAccess.getSectionAccess().getLabelSTRINGTerminalRuleCall_6_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getSectionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"label",
        		lv_label_9_0, 
        		"STRING");
	    }

)
))?	otherlv_10='index' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getSectionAccess().getIndexKeyword_7());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionAccess().getIndexEIntParserRuleCall_8_0()); 
	    }
		lv_index_11_0=ruleEInt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionRule());
	        }
       		set(
       			$current, 
       			"index",
        		lv_index_11_0, 
        		"EInt");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_12='filtering' 
    {
    	newLeafNode(otherlv_12, grammarAccess.getSectionAccess().getFilteringKeyword_9_0());
    }
	otherlv_13=':' 
    {
    	newLeafNode(otherlv_13, grammarAccess.getSectionAccess().getColonKeyword_9_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionAccess().getFilteringEBooleanParserRuleCall_9_2_0()); 
	    }
		lv_filtering_14_0=ruleEBoolean		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionRule());
	        }
       		set(
       			$current, 
       			"filtering",
        		lv_filtering_14_0, 
        		"EBoolean");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_15='expanded' 
    {
    	newLeafNode(otherlv_15, grammarAccess.getSectionAccess().getExpandedKeyword_10_0());
    }
	otherlv_16=':' 
    {
    	newLeafNode(otherlv_16, grammarAccess.getSectionAccess().getColonKeyword_10_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionAccess().getExpandedEBooleanParserRuleCall_10_2_0()); 
	    }
		lv_expanded_17_0=ruleEBoolean		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionRule());
	        }
       		set(
       			$current, 
       			"expanded",
        		lv_expanded_17_0, 
        		"EBoolean");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_18='activities' 
    {
    	newLeafNode(otherlv_18, grammarAccess.getSectionAccess().getActivitiesKeyword_11_0());
    }
	otherlv_19='{' 
    {
    	newLeafNode(otherlv_19, grammarAccess.getSectionAccess().getLeftCurlyBracketKeyword_11_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionAccess().getOwnedActivitiesActivityParserRuleCall_11_2_0()); 
	    }
		lv_ownedActivities_20_0=ruleActivity		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionRule());
	        }
       		add(
       			$current, 
       			"ownedActivities",
        		lv_ownedActivities_20_0, 
        		"Activity");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_21='}' 
    {
    	newLeafNode(otherlv_21, grammarAccess.getSectionAccess().getRightCurlyBracketKeyword_11_3());
    }
)?	otherlv_22='}' 
    {
    	newLeafNode(otherlv_22, grammarAccess.getSectionAccess().getRightCurlyBracketKeyword_12());
    }
)
;





// Entry rule entryRuleActivity
entryRuleActivity returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getActivityRule()); }
	 iv_ruleActivity=ruleActivity 
	 { $current=$iv_ruleActivity.current; } 
	 EOF 
;

// Rule Activity
ruleActivity returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getActivityAccess().getActivityAction_0(),
            $current);
    }
)	otherlv_1='activity' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getActivityAccess().getActivityKeyword_1());
    }
(
(
		lv_name_2_0=RULE_ID
		{
			newLeafNode(lv_name_2_0, grammarAccess.getActivityAccess().getNameIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getActivityRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"ID");
	    }

)
)	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getActivityAccess().getLeftCurlyBracketKeyword_3());
    }
(	otherlv_4='description' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getActivityAccess().getDescriptionKeyword_4_0());
    }
(
(
		lv_description_5_0=RULE_STRING
		{
			newLeafNode(lv_description_5_0, grammarAccess.getActivityAccess().getDescriptionSTRINGTerminalRuleCall_4_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getActivityRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"description",
        		lv_description_5_0, 
        		"STRING");
	    }

)
))?(	otherlv_6='id' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getActivityAccess().getIdKeyword_5_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getActivityAccess().getActivityExplorerItemIDFQNParserRuleCall_5_1_0()); 
	    }
		lv_activityExplorerItemID_7_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActivityRule());
	        }
       		set(
       			$current, 
       			"activityExplorerItemID",
        		lv_activityExplorerItemID_7_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_8='label' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getActivityAccess().getLabelKeyword_6_0());
    }
(
(
		lv_label_9_0=RULE_STRING
		{
			newLeafNode(lv_label_9_0, grammarAccess.getActivityAccess().getLabelSTRINGTerminalRuleCall_6_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getActivityRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"label",
        		lv_label_9_0, 
        		"STRING");
	    }

)
))?	otherlv_10='index' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getActivityAccess().getIndexKeyword_7());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getActivityAccess().getIndexEIntParserRuleCall_8_0()); 
	    }
		lv_index_11_0=ruleEInt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActivityRule());
	        }
       		set(
       			$current, 
       			"index",
        		lv_index_11_0, 
        		"EInt");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_12='predicated' 
    {
    	newLeafNode(otherlv_12, grammarAccess.getActivityAccess().getPredicatedKeyword_9_0());
    }
	otherlv_13=':' 
    {
    	newLeafNode(otherlv_13, grammarAccess.getActivityAccess().getColonKeyword_9_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getActivityAccess().getHasPredicateEBooleanParserRuleCall_9_2_0()); 
	    }
		lv_hasPredicate_14_0=ruleEBoolean		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getActivityRule());
	        }
       		set(
       			$current, 
       			"hasPredicate",
        		lv_hasPredicate_14_0, 
        		"EBoolean");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_15='icon' 
    {
    	newLeafNode(otherlv_15, grammarAccess.getActivityAccess().getIconKeyword_10_0());
    }
	otherlv_16=':' 
    {
    	newLeafNode(otherlv_16, grammarAccess.getActivityAccess().getColonKeyword_10_1());
    }
(
(
		lv_imagePathOff_17_0=RULE_STRING
		{
			newLeafNode(lv_imagePathOff_17_0, grammarAccess.getActivityAccess().getImagePathOffSTRINGTerminalRuleCall_10_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getActivityRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"imagePathOff",
        		lv_imagePathOff_17_0, 
        		"STRING");
	    }

)
))?	otherlv_18='}' 
    {
    	newLeafNode(otherlv_18, grammarAccess.getActivityAccess().getRightCurlyBracketKeyword_11());
    }
)
;





// Entry rule entryRulePageExtension
entryRulePageExtension returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPageExtensionRule()); }
	 iv_rulePageExtension=rulePageExtension 
	 { $current=$iv_rulePageExtension.current; } 
	 EOF 
;

// Rule PageExtension
rulePageExtension returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getPageExtensionAccess().getPageExtensionAction_0(),
            $current);
    }
)	otherlv_1='page-extensions' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getPageExtensionAccess().getPageExtensionsKeyword_1());
    }
	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getPageExtensionAccess().getLeftCurlyBracketKeyword_2());
    }
	otherlv_3='extended-page' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getPageExtensionAccess().getExtendedPageKeyword_3());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPageExtensionAccess().getExtendedPageIDFQNParserRuleCall_4_0()); 
	    }
		lv_extendedPageID_4_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageExtensionRule());
	        }
       		set(
       			$current, 
       			"extendedPageID",
        		lv_extendedPageID_4_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getPageExtensionAccess().getOwnedSectionsSectionParserRuleCall_5_0()); 
	    }
		lv_ownedSections_5_0=ruleSection		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageExtensionRule());
	        }
       		add(
       			$current, 
       			"ownedSections",
        		lv_ownedSections_5_0, 
        		"Section");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_6='}' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getPageExtensionAccess().getRightCurlyBracketKeyword_6());
    }
)
;





// Entry rule entryRuleSectionExtension
entryRuleSectionExtension returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getSectionExtensionRule()); }
	 iv_ruleSectionExtension=ruleSectionExtension 
	 { $current=$iv_ruleSectionExtension.current; } 
	 EOF 
;

// Rule SectionExtension
ruleSectionExtension returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getSectionExtensionAccess().getSectionExtensionAction_0(),
            $current);
    }
)	otherlv_1='section-extensions' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getSectionExtensionAccess().getSectionExtensionsKeyword_1());
    }
	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getSectionExtensionAccess().getLeftCurlyBracketKeyword_2());
    }
	otherlv_3='extended-section' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getSectionExtensionAccess().getExtendedSectionKeyword_3());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionExtensionAccess().getExtendedSectionIDFQNParserRuleCall_4_0()); 
	    }
		lv_extendedSectionID_4_0=ruleFQN		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionExtensionRule());
	        }
       		set(
       			$current, 
       			"extendedSectionID",
        		lv_extendedSectionID_4_0, 
        		"FQN");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getSectionExtensionAccess().getOwnedActivitiesActivityParserRuleCall_5_0()); 
	    }
		lv_ownedActivities_5_0=ruleActivity		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSectionExtensionRule());
	        }
       		add(
       			$current, 
       			"ownedActivities",
        		lv_ownedActivities_5_0, 
        		"Activity");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_6='}' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getSectionExtensionAccess().getRightCurlyBracketKeyword_6());
    }
)
;





// Entry rule entryRuleOverview
entryRuleOverview returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getOverviewRule()); }
	 iv_ruleOverview=ruleOverview 
	 { $current=$iv_ruleOverview.current; } 
	 EOF 
;

// Rule Overview
ruleOverview returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getOverviewAccess().getOverviewAction_0(),
            $current);
    }
)	otherlv_1='Overview' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getOverviewAccess().getOverviewKeyword_1());
    }
	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getOverviewAccess().getLeftCurlyBracketKeyword_2());
    }
(	otherlv_3='description' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getOverviewAccess().getDescriptionKeyword_3_0());
    }
(
(
		lv_description_4_0=RULE_STRING
		{
			newLeafNode(lv_description_4_0, grammarAccess.getOverviewAccess().getDescriptionSTRINGTerminalRuleCall_3_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getOverviewRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"description",
        		lv_description_4_0, 
        		"STRING");
	    }

)
))?(	otherlv_5='image-on' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getOverviewAccess().getImageOnKeyword_4_0());
    }
	otherlv_6=':' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getOverviewAccess().getColonKeyword_4_1());
    }
(
(
		lv_imagePathOn_7_0=RULE_STRING
		{
			newLeafNode(lv_imagePathOn_7_0, grammarAccess.getOverviewAccess().getImagePathOnSTRINGTerminalRuleCall_4_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getOverviewRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"imagePathOn",
        		lv_imagePathOn_7_0, 
        		"STRING");
	    }

)
))?(	otherlv_8='image-off' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getOverviewAccess().getImageOffKeyword_5_0());
    }
	otherlv_9=':' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getOverviewAccess().getColonKeyword_5_1());
    }
(
(
		lv_imagePathOff_10_0=RULE_STRING
		{
			newLeafNode(lv_imagePathOff_10_0, grammarAccess.getOverviewAccess().getImagePathOffSTRINGTerminalRuleCall_5_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getOverviewRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"imagePathOff",
        		lv_imagePathOff_10_0, 
        		"STRING");
	    }

)
))?	otherlv_11='}' 
    {
    	newLeafNode(otherlv_11, grammarAccess.getOverviewAccess().getRightCurlyBracketKeyword_6());
    }
)
;







// Entry rule entryRuleFQN
entryRuleFQN returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getFQNRule()); } 
	 iv_ruleFQN=ruleFQN 
	 { $current=$iv_ruleFQN.current.getText(); }  
	 EOF 
;

// Rule FQN
ruleFQN returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); 
    }
(
	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); 
    }
(( RULE_ID)=>    this_ID_2=RULE_ID    {
		$current.merge(this_ID_2);
    }

    { 
    newLeafNode(this_ID_2, grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); 
    }
))*)
    ;





// Entry rule entryRuleEBoolean
entryRuleEBoolean returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getEBooleanRule()); } 
	 iv_ruleEBoolean=ruleEBoolean 
	 { $current=$iv_ruleEBoolean.current.getText(); }  
	 EOF 
;

// Rule EBoolean
ruleEBoolean returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='true' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEBooleanAccess().getTrueKeyword_0()); 
    }

    |
	kw='false' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEBooleanAccess().getFalseKeyword_1()); 
    }
)
    ;





// Entry rule entryRuleEInt
entryRuleEInt returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getEIntRule()); } 
	 iv_ruleEInt=ruleEInt 
	 { $current=$iv_ruleEInt.current.getText(); }  
	 EOF 
;

// Rule EInt
ruleEInt returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
    this_INT_0=RULE_INT    {
		$current.merge(this_INT_0);
    }

    { 
    newLeafNode(this_INT_0, grammarAccess.getEIntAccess().getINTTerminalRuleCall()); 
    }

    ;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


