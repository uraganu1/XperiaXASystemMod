.class public Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;
.super Landroid/app/Activity;
.source "MmsOnePageViewActivity.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/sonyericsson/conversations/ui/MessageContent;
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;,
        Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;,
        Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$2;,
        Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$3;
    }
.end annotation


# instance fields
.field private mContextMenu:Landroid/view/ContextMenu;

.field private mContextMenuForTest:Landroid/view/ContextMenu;

.field private mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field mHandler:Landroid/os/Handler;

.field private mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mPd:Landroid/app/ProgressDialog;

.field private mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

.field private mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)Lcom/sonyericsson/conversations/model/Message;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->dismissProgressDlg()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->showProgressDlg()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    sget-object v0, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->CONVERSATION_ID_NONE:Lcom/sonyericsson/conversations/conversation/ConversationId;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 87
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    .line 89
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    .line 91
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$1;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mHandler:Landroid/os/Handler;

    .line 402
    new-instance v0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$2;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 419
    new-instance v0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$3;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 49
    return-void
.end method

.method private dismissProgressDlg()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 132
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    .line 128
    return-void
.end method

.method private showProgressDlg()V
    .locals 6

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 122
    :cond_1
    const-string/jumbo v1, ""

    .line 123
    const v0, 0x7f0b0187

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p0

    .line 122
    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mPd:Landroid/app/ProgressDialog;

    .line 113
    return-void
.end method

.method private updateActionBar(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 441
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 443
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 444
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 445
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 446
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 448
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->finish()V

    .line 353
    return-void
.end method

.method public onClick()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public onContentDeleted(Z)V
    .locals 0
    .param p1, "lastXmsMessageDeleted"    # Z

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->finish()V

    .line 349
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 291
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 231
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->resendMessage()V

    .line 234
    :cond_0
    return v12

    .line 236
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->downloadMessage()V

    .line 239
    :cond_1
    return v12

    .line 241
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->forwardMessage()V

    .line 244
    :cond_2
    return v12

    .line 246
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-nez v0, :cond_3

    .line 247
    return v12

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-ne v0, v12, :cond_4

    const/4 v11, 0x1

    .line 250
    .local v11, "isStarred":Z
    :goto_0
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 251
    .local v10, "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v7, 0x0

    .line 252
    .local v7, "checkBoxTextResId":I
    const/4 v8, 0x0

    .line 253
    .local v8, "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    const/4 v9, 0x0

    .line 255
    .local v9, "confirmMessage":I
    if-eqz v11, :cond_5

    .line 256
    const v9, 0x7f0b01d4

    .line 257
    const v7, 0x7f0b01d3

    .line 258
    new-instance v8, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$4;

    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-direct {v8, p0, v10}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$4;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 268
    :goto_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$5;

    invoke-direct {v2, p0, v10}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$5;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 276
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 276
    const v1, 0x7f0b0161

    .line 277
    const v3, 0x7f0b015a

    move-object v5, v4

    .line 275
    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 279
    return v12

    .line 249
    .end local v2    # "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "checkBoxTextResId":I
    .end local v9    # "confirmMessage":I
    .end local v10    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v11    # "isStarred":Z
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "isStarred":Z
    goto :goto_0

    .line 265
    .restart local v7    # "checkBoxTextResId":I
    .restart local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .restart local v9    # "confirmMessage":I
    .restart local v10    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_5
    const v9, 0x7f0b0083

    goto :goto_1

    .line 281
    .end local v7    # "checkBoxTextResId":I
    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .end local v9    # "confirmMessage":I
    .end local v10    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v11    # "isStarred":Z
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_6

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->playSlideshow()V

    .line 284
    :cond_6
    return v12

    .line 286
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_7

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copyTextToClipboard()V

    .line 289
    :cond_7
    return v12

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "INTENT_EXTRA_CONVERSATION_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/conversation/ConversationId;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 182
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 183
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v1}, Lcom/sonyericsson/conversations/model/ModelCache;->getMessage(JLandroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 185
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 176
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v2, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    invoke-direct {v2, p0, p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    .line 190
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 198
    instance-of v0, p2, Lcom/sonyericsson/conversations/ui/MessageItemView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isCopyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x5

    .line 202
    const v1, 0x7f0b0145

    .line 201
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isPlaySlideshowVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x4

    .line 206
    const v1, 0x7f0b009c

    .line 205
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isResendVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    const v0, 0x7f0b009b

    .line 209
    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isDownloadVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    const/4 v0, 0x1

    .line 214
    const v1, 0x7f0b0095

    .line 213
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isForwardVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isForwardEnabled()Z

    move-result v0

    .line 216
    if-eqz v0, :cond_4

    .line 218
    const/4 v0, 0x2

    .line 219
    const v1, 0x7f0b0096

    .line 218
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 221
    :cond_4
    const/4 v0, 0x3

    const v1, 0x7f0b0057

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 223
    :cond_5
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenuForTest:Landroid/view/ContextMenu;

    .line 224
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenu:Landroid/view/ContextMenu;

    .line 195
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;->cancel(Z)Z

    .line 338
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mQueryAsyncTask:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$QueryAsyncTask;

    .line 341
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 331
    return-void
.end method

.method public onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/view/ContextMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenu:Landroid/view/ContextMenu;

    .line 362
    return-void

    .line 364
    :cond_0
    if-nez p2, :cond_1

    .line 366
    return-void

    .line 369
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 370
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    const/4 v5, 0x0

    move-object v4, p2

    move-object v6, p3

    .line 369
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V

    .line 371
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "text/x-vCard"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isVCardLocationObject(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    invoke-static {p0, p2}, Lcom/sonyericsson/conversations/ui/dialog/LocationVCardDialog;->showLocationDialog(Landroid/content/Context;Landroid/net/Uri;)V

    .line 358
    :goto_0
    return-void

    .line 376
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->saveVCardContact()V

    goto :goto_0

    .line 379
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->viewObject()V

    goto :goto_0
.end method

.method public onTouchDown()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public onTouchUp()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 8
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 298
    instance-of v5, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-nez v5, :cond_0

    .line 299
    return-void

    :cond_0
    move-object v1, p1

    .line 302
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 303
    .local v1, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 304
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 305
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03003d

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 306
    .local v3, "v":Landroid/view/View;
    instance-of v5, v3, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

    if-nez v5, :cond_1

    .line 307
    return-void

    :cond_1
    move-object v4, v3

    .line 309
    check-cast v4, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;

    .line 311
    .local v4, "view":Lcom/sonyericsson/conversations/ui/MessageItemMmsView;
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->setContentView(Landroid/view/View;)V

    .line 312
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mObjectContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->setOnObjectLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 313
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->setOnTextLongPressedListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 314
    invoke-virtual {v4, p0}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->setOnShortClickListener(Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;)V

    .line 316
    new-instance v5, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 317
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getDefaultMessageOptions(Lcom/sonyericsson/conversations/model/Message;)I

    move-result v7

    .line 316
    invoke-direct {v5, p0, v6, v1, v7}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;I)V

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 318
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v5, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V

    .line 319
    invoke-virtual {v4, v1, p2}, Lcom/sonyericsson/conversations/ui/MessageItemMmsView;->setMessage(Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 320
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 322
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "titleString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 325
    const v6, 0x7f0b00ea

    .line 324
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    :cond_2
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->updateActionBar(Ljava/lang/String;)V

    .line 297
    return-void
.end method
