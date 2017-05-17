.class public Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;
.super Landroid/app/Fragment;
.source "ConversationRecipientEditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;,
        Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;
    }
.end annotation


# instance fields
.field private mAddressesToAddLater:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDoShowKeyboard:Z

.field private mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

.field private volatile mIsReadyToAddParticipants:Z

.field private mRecipientEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

.field private mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

.field private mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    .line 66
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    .line 70
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mDoShowKeyboard:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAddressesToAddLater:Ljava/util/List;

    .line 74
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mIsReadyToAddParticipants:Z

    .line 76
    return-void
.end method


# virtual methods
.method public addParticipantsToEditorAsync(Ljava/util/List;Z)V
    .locals 2
    .param p2, "forceGiveAwayFocus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mIsReadyToAddParticipants:Z

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;

    const-string/jumbo v1, "add participant2editor thread"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->start()V

    .line 189
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAddressesToAddLater:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public convertAllRecipients()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->convertAllRecipients()Z

    .line 84
    :cond_0
    return-void
.end method

.method public finishUp()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->onRecipientsChanged(Z)V

    .line 303
    return-void
.end method

.method public getAllInputRecipientCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getAllRecipientCount()I

    move-result v0

    goto :goto_0
.end method

.method public getInvalidRecipients()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getValidRecipients()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getValidRecipients()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public hasValidRecipient()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->hasValidRecipient()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecipientDirty()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isRecipientDirty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    new-instance v1, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/RecipientsAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/RecipientBubble;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 172
    const/16 v1, 0x68

    if-ne p1, v1, :cond_0

    .line 173
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 175
    const-string/jumbo v1, "msg_uris"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 174
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/ContactPickerResultUtil;->extractAddresses(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->addParticipantsToEditorAsync(Ljava/util/List;Z)V

    .line 171
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    return-object v3

    .line 113
    :cond_0
    const v2, 0x7f030033

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    .line 116
    const/4 v4, -0x2

    .line 115
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const v2, 0x7f0d0090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .line 120
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 121
    const v4, 0x7f0b0162

    .line 120
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    const/4 v4, 0x5

    .line 120
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 123
    new-instance v2, Lcom/sonyericsson/conversations/ui/RecipientBubble;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {v2, v3}, Lcom/sonyericsson/conversations/ui/RecipientBubble;-><init>(Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mSpanString:Lcom/sonyericsson/conversations/ui/RecipientBubble;

    .line 125
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .line 126
    new-array v3, v6, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 125
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 128
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTextMessagingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mDoShowKeyboard:Z

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->showSoftKeys()V

    .line 135
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->registerEditorListener(Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;)V

    .line 137
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientCount()I

    move-result v0

    .line 138
    .local v0, "maxRecipients":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setMaxRecipientCount(I)V

    .line 140
    iput-boolean v6, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mIsReadyToAddParticipants:Z

    .line 141
    return-object v1

    .line 133
    .end local v0    # "maxRecipients":I
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 211
    .local v0, "recipientsAdapter":Landroid/widget/CursorAdapter;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->unRegisterEditorListener()V

    .line 215
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .line 205
    .end local v0    # "recipientsAdapter":Landroid/widget/CursorAdapter;
    :cond_1
    return-void
.end method

.method public onEditorAddText()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    .line 289
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;->onEditorContentChanged(Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isEndWithTerminator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->showDropDown()V

    .line 286
    return-void
.end method

.method public onEditorContentChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;->onEditorContentChanged(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method public onEditorDeleteText()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    .line 282
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;->onEditorContentChanged(Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public onRecipientsChanged(Z)V
    .locals 7
    .param p1, "changeFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setRecipientDirty(Z)V

    .line 242
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 245
    .local v1, "r":Landroid/content/res/Resources;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getPaddingStart()I

    move-result v3

    .line 247
    const v4, 0x7f0c001f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 248
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getPaddingEnd()I

    move-result v5

    .line 249
    const v6, 0x7f0c0020

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 246
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setPadding(IIII)V

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    invoke-interface {v2, v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;->onParticipantsChanged(Ljava/util/List;Z)V

    .line 239
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 251
    .restart local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "r":Landroid/content/res/Resources;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getPaddingStart()I

    move-result v3

    .line 252
    const v4, 0x7f0c001d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 253
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getPaddingEnd()I

    move-result v5

    .line 254
    const v6, 0x7f0c001e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 251
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 223
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .line 224
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTextMessagingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 223
    :goto_0
    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAddressesToAddLater:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAddressesToAddLater:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 228
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAddressesToAddLater:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 227
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->addParticipantsToEditorAsync(Ljava/util/List;Z)V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mAddressesToAddLater:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    :cond_1
    return-void

    .line 224
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public resetToField()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getAllInputRecipientCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->removeAllRecipients()V

    .line 164
    :cond_0
    return-void
.end method

.method public setRecipientEditorContentListener(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientEditorContentListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;

    .line 144
    return-void
.end method

.method public setRecipientEditorPanelListener(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mEditorListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    .line 90
    return-void
.end method

.method public showSoftKeyboard()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->showSoftKeys()V

    .line 271
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mDoShowKeyboard:Z

    goto :goto_0
.end method
