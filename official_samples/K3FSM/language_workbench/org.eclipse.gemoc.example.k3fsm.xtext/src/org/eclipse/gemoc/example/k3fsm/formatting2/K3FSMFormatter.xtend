/*
 * generated by Xtext 2.12.0
 */
package org.eclipse.gemoc.example.k3fsm.formatting2

import com.google.inject.Inject
import org.eclipse.gemoc.example.k3fsm.FSM
import org.eclipse.gemoc.example.k3fsm.State
import org.eclipse.gemoc.example.k3fsm.Transition
import org.eclipse.gemoc.example.k3fsm.services.K3FSMGrammarAccess
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument

class K3FSMFormatter extends AbstractFormatter2 {
	
	@Inject extension K3FSMGrammarAccess

	def dispatch void format(FSM fSM, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (State state : fSM.getOwnedStates()) {
			state.format;
		}
	}

	def dispatch void format(State state, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Transition transition : state.getOutgoingTransitions()) {
			transition.format;
		}
	}
	
	// TODO: implement for 
}
