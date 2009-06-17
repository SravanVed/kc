/*
 * Copyright 2006-2009 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.osedu.org/licenses/ECL-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.kim.exception;

/**
 * An Unknown Username Exception occurs when KIM request is made
 * and KIM does not recognize the username.
 * 
 * @author Kuali Research Administration Team (kualidev@oncourse.iu.edu)
 */
public class UnknownUsernameException extends RuntimeException {

    private static final long serialVersionUID = 6801433039964328700L;

    /**
     * Constructs a UnknownUsernameException.
     * @param username the person's unique username
     */
    public UnknownUsernameException(String username) {
        super("Unknown Username: " + username);
    }
}
