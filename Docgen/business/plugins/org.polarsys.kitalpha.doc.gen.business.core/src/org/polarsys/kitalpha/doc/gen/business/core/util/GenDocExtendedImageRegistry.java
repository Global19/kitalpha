/*******************************************************************************
 * Copyright (c) 2014 Thales Global Services S.A.S.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *  
 * Contributors:
 *   Thales Global Services S.A.S - initial API and implementation
 ******************************************************************************/
package org.polarsys.kitalpha.doc.gen.business.core.util;

import org.eclipse.emf.edit.ui.provider.ExtendedImageRegistry;

public class GenDocExtendedImageRegistry extends ExtendedImageRegistry {

	private static GenDocExtendedImageRegistry INSTANCE = new GenDocExtendedImageRegistry();

	public static GenDocExtendedImageRegistry getInstance() {
		return INSTANCE;
	}

	public void dispose() {
		table.clear();
	}
}
