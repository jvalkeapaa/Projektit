using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface I_interactable
{
    public string InteractionPrompt { get; }
    public bool Interact(Interactor interactor);
}
