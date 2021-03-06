/******************************************************************************
 * Copyright (c) 2006, 2020 THALES GLOBAL SERVICES.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0
 * 
 * SPDX-License-Identifier: EPL-2.0
 *  
 * Contributors:
 *    Thales - initial API and implementation
 *****************************************************************************/

package org.polarsys.kitalpha.explorer.contextual.examples.ecore.queries;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.amalgam.explorer.contextual.core.query.IQuery;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.polarsys.kitalpha.explorer.contextual.examples.ecore.helper.EClassReferencesHelper;

/**
 * @author Boubekeur Zendagui
 */
public class EClassDerivedEClassesQuery implements IQuery {

	@Override
	public List<Object> compute(Object object_p) {
		List<Object> result = new ArrayList<Object>();
		if (object_p instanceof EClass)
		{
			EClass eClass = (EClass) object_p;
			EPackage ePackage = (EPackage) EcoreUtil.getRootContainer(eClass);
			
			List<EClass> allEClasses = EClassReferencesHelper.getAllEClasses(ePackage);
			
			for (EClass eClass2 : allEClasses) 
			{
				if (eClass2.getESuperTypes().contains(eClass))
					result.add(eClass2);
			}
		}
		return result;
	}
}
