.class public Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
.super Landroid/app/Fragment;
.source "SimMessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SimMessageListFragment$SimCursorAdapter;,
        Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;
    }
.end annotation


# static fields
.field public static final ICC_PHONE_ID_SIM1_URI:Landroid/net/Uri;

.field public static final ICC_PHONE_ID_SIM2_URI:Landroid/net/Uri;


# instance fields
.field mContextMenuForTest:Landroid/view/ContextMenu;

.field private mEmptyListText:Landroid/widget/TextView;

.field private mIsResumed:Z

.field private mListAdapter:Landroid/widget/CursorAdapter;

.field private mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mPendingRefresh:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSimList:Landroid/widget/ListView;

.field mState:I


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Landroid/widget/CursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->updateState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "content://sms/icc1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->ICC_PHONE_ID_SIM1_URI:Landroid/net/Uri;

    .line 52
    const-string/jumbo v0, "content://sms/icc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->ICC_PHONE_ID_SIM2_URI:Landroid/net/Uri;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    .line 68
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 49
    return-void
.end method

.method private getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->getSimCardSlotIndex()I

    move-result v0

    .line 219
    .local v0, "simCardSlotIndex":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    sget-object v1, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->ICC_PHONE_ID_SIM2_URI:Landroid/net/Uri;

    return-object v1

    .line 222
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->ICC_PHONE_ID_SIM1_URI:Landroid/net/Uri;

    return-object v1
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 155
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 156
    const/16 v1, 0xf

    .line 158
    .local v1, "flag":I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 153
    .end local v1    # "flag":I
    :cond_0
    return-void
.end method

.method private refreshMessageList()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->updateState(I)V

    .line 228
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->startQuery()V

    .line 225
    :cond_0
    return-void
.end method

.method private registerOrUnregisterContextMenu()V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v0

    .line 140
    .local v0, "isDefaultSmsPackage":Z
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 137
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method private showProgressDialog(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 296
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 298
    const v2, 0x7f0b012e

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v4, v3

    move-object v5, p0

    .line 297
    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 301
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private startQuery()V
    .locals 9

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v8

    .line 212
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 269
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mState:I

    if-ne v0, p1, :cond_0

    .line 270
    return-void

    .line 273
    :cond_0
    iput p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mState:I

    .line 274
    packed-switch p1, :pswitch_data_0

    .line 291
    const-string/jumbo v0, "Invalid State"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 276
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mEmptyListText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->showProgressDialog(Z)V

    goto :goto_0

    .line 281
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mEmptyListText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->showProgressDialog(Z)V

    goto :goto_0

    .line 286
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mEmptyListText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->showProgressDialog(Z)V

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public focusMessageList()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 147
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->getSimCardSlotIndex()I

    move-result v0

    .line 177
    .local v0, "simCardSlotIndex":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 178
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_2_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 179
    .local v1, "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeAllNotificationsOfType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    .line 181
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->updateState(I)V

    .line 182
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->startQuery()V

    .line 175
    return-void

    .line 178
    .end local v1    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->SIM_1_FULL:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .restart local v1    # "type":Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;
    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 377
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onContentDeleted(Z)V
    .locals 1
    .param p1, "lastXmsMessageDeleted"    # Z

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mIsResumed:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->refreshMessageList()V

    .line 106
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mPendingRefresh:Z

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 328
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 309
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;->getSimCardSlotIndex()I

    move-result v6

    .line 311
    .local v6, "simCardSlotIndex":I
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copyMessage(Landroid/app/Activity;I)V

    .line 312
    return v7

    .line 314
    .end local v6    # "simCardSlotIndex":I
    :pswitch_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)V

    .line 322
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 323
    const v1, 0x7f0b0083

    .line 322
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 324
    const v1, 0x7f0b0161

    const v3, 0x7f0b015a

    const/4 v4, 0x0

    .line 321
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/app/FragmentManager;)V

    .line 326
    return v7

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 334
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v0, p3

    .line 336
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 338
    .local v0, "adapterMenuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v7}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 339
    .local v1, "cursor":Landroid/database/Cursor;
    iget v7, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 340
    const-string/jumbo v7, "index_on_icc"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "iccIndex":Ljava/lang/String;
    const-string/jumbo v7, "true"

    .line 342
    const-string/jumbo v8, "is_status_report"

    .line 341
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 343
    .local v3, "isStatusReport":Z
    const/4 v5, 0x0

    .line 345
    .local v5, "options":I
    if-nez v3, :cond_0

    .line 346
    const/high16 v5, 0x10000

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 352
    .local v6, "uri":Landroid/net/Uri;
    new-instance v4, Lcom/sonyericsson/conversations/model/SimMessage;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v6}, Lcom/sonyericsson/conversations/model/SimMessage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 354
    .local v4, "message":Lcom/sonyericsson/conversations/model/Message;
    new-instance v7, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 355
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdOnly(J)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v9

    .line 354
    invoke-direct {v7, v8, v9, v4, v5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;I)V

    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 357
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v7, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V

    .line 359
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isCopyVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 360
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 361
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v10, 0x7f0b0055

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 366
    :cond_1
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const v10, 0x7f0b0057

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 368
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mContextMenuForTest:Landroid/view/ContextMenu;

    .line 333
    return-void

    .line 363
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v10, 0x7f0b0054

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    new-instance v1, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$QueryHandler;-><init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 123
    const v1, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0d00da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    .line 126
    const v1, 0x7f0d00db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mEmptyListText:Landroid/widget/TextView;

    .line 127
    new-instance v1, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$SimCursorAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$SimCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mSimList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->registerOrUnregisterContextMenu()V

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->init()V

    .line 133
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->initActionBar()V

    .line 134
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 257
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mListAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 265
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 254
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 171
    const/4 v1, 0x0

    return v1

    .line 167
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 166
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getConversationHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 168
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->startActivity(Landroid/content/Intent;)V

    .line 169
    const/4 v1, 0x1

    return v1

    .line 164
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mIsResumed:Z

    .line 247
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mIsResumed:Z

    .line 238
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->registerOrUnregisterContextMenu()V

    .line 240
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mPendingRefresh:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->refreshMessageList()V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mPendingRefresh:Z

    .line 233
    :cond_0
    return-void
.end method
