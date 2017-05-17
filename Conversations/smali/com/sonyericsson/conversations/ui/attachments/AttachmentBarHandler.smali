.class Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;
.super Landroid/os/Handler;
.source "AttachmentBarHandler.java"


# instance fields
.field private final mAbfWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mIsKeyboardShowing:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)V
    .locals 4
    .param p1, "abf"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->mAbfWeakRef:Ljava/lang/ref/WeakReference;

    .line 47
    const/4 v1, 0x6

    invoke-static {p0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 48
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 44
    return-void
.end method

.method private checkOrRequestValidFocus(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)Landroid/view/View;
    .locals 4
    .param p1, "abf"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 184
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->isValidInputView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    return-object v1

    .line 179
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-object v3

    .line 185
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->getEditTextView(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)Landroid/widget/EditText;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 189
    :cond_2
    return-object v3
.end method

.method private getEditTextView(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)Landroid/widget/EditText;
    .locals 2
    .param p1, "abf"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getAttachmentTarget()Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;

    move-result-object v0

    .line 202
    .local v0, "attachmentTarget":Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;->getEditTextView()Landroid/widget/EditText;

    move-result-object v1

    goto :goto_0
.end method

.method private isValidInputView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0d0090

    if-eq v1, v2, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0d00b8

    if-ne v1, v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0d00b9

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resendMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 83
    .local v1, "trials":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "trials":I
    .local v2, "trials":I
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 84
    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, v3, v2, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 85
    .local v0, "nextMsg":Landroid/os/Message;
    const-wide/16 v4, 0x32

    invoke-virtual {p0, v0, v4, v5}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 81
    .end local v0    # "nextMsg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private showKeyboard(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;Z)Z
    .locals 8
    .param p1, "abf"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visible"    # Z
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 150
    return v6

    .line 154
    :cond_0
    const-string/jumbo v5, "input_method"

    .line 153
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 155
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v1, :cond_1

    .line 156
    return v6

    .line 159
    :cond_1
    if-nez p2, :cond_3

    .line 160
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, "rootView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 163
    .local v4, "windowToken":Landroid/os/IBinder;
    if-eqz v4, :cond_2

    invoke-virtual {v1, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    return v7

    .line 167
    .end local v4    # "windowToken":Landroid/os/IBinder;
    :cond_2
    return v6

    .line 170
    .end local v2    # "rootView":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->checkOrRequestValidFocus(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)Landroid/view/View;

    move-result-object v3

    .line 171
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_4

    return v6

    .line 173
    :cond_4
    invoke-virtual {v1, v3, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v5

    return v5
.end method


# virtual methods
.method public forceHideKeyboard(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)V
    .locals 1
    .param p1, "abf"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->showKeyboard(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;Z)Z

    .line 209
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->mAbfWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    .line 96
    .local v0, "abf":Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;
    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->resendMessage(Landroid/os/Message;)V

    .line 101
    return-void

    .line 104
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AttachmentBarHandler received unsupported message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 94
    :cond_2
    :goto_0
    return-void

    .line 106
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->checkOrRequestValidFocus(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;)Landroid/view/View;

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->showKeyboard(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->resendMessage(Landroid/os/Message;)V

    .line 111
    return-void

    .line 113
    :cond_3
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->mIsKeyboardShowing:Z

    .line 114
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->hidePicker()V

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->showKeyboard(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 118
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->resendMessage(Landroid/os/Message;)V

    .line 119
    return-void

    .line 121
    :cond_4
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->mIsKeyboardShowing:Z

    goto :goto_0

    .line 125
    :pswitch_3
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->mIsKeyboardShowing:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->showKeyboard(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 129
    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->showPicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V

    goto :goto_0

    .line 126
    :cond_6
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->resendMessage(Landroid/os/Message;)V

    .line 127
    return-void

    .line 134
    :pswitch_4
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->hidePicker()V

    goto :goto_0

    .line 137
    :pswitch_5
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->updatePickerContainerLayout()V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public hidePicker()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 70
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->removeMessages(I)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->removeMessages(I)V

    .line 72
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->removeMessages(I)V

    .line 73
    invoke-static {p0, v2, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void
.end method

.method public setKeyboard(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 52
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->removeMessages(I)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->removeMessages(I)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->removeMessages(I)V

    .line 55
    if-eqz p1, :cond_0

    :goto_0
    invoke-static {p0, v1, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 56
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v1, v2

    .line 55
    goto :goto_0
.end method

.method public setKeyboardHidden()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->mIsKeyboardShowing:Z

    .line 89
    return-void
.end method

.method public showPicker(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;)V
    .locals 3
    .param p1, "menuItem"    # Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;->getAction()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction$ExpandablePicker;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->removeMessages(I)V

    .line 64
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->removeMessages(I)V

    .line 65
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->removeMessages(I)V

    .line 66
    invoke-static {p0, v2, v1, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    return-void

    .line 61
    :cond_0
    return-void
.end method

.method public updatePickerContainerLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->removeMessages(I)V

    .line 78
    invoke-static {p0, v1, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarHandler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method
