.class public Lcom/sonyericsson/conversations/ui/CopyTextCallBack;
.super Ljava/lang/Object;
.source "CopyTextCallBack.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;

.field private mTextCopied:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;->mListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 50
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 52
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;->mTextCopied:Z

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1020021
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;->mListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;->mListener:Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnActionBarShownListener;->onActionBarShown()V

    .line 40
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "actionMode"    # Landroid/view/ActionMode;

    .prologue
    .line 62
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;->mTextCopied:Z

    if-nez v3, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/CopyTextCallBack;->mContext:Landroid/content/Context;

    .line 66
    const-string/jumbo v4, "clipboard"

    .line 65
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 67
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    if-nez v3, :cond_1

    .line 68
    return-void

    .line 70
    :cond_1
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 71
    .local v2, "item":Landroid/content/ClipData$Item;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    :cond_2
    return-void

    .line 74
    :cond_3
    const-class v3, Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 76
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 61
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "actionMode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
