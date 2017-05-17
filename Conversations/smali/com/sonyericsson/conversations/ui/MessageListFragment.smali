.class public Lcom/sonyericsson/conversations/ui/MessageListFragment;
.super Landroid/app/ListFragment;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
.implements Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;
.implements Lcom/sonymobile/jms/message/ImFileIconListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;,
        Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;,
        Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;,
        Lcom/sonyericsson/conversations/ui/MessageListFragment$1;,
        Lcom/sonyericsson/conversations/ui/MessageListFragment$2;,
        Lcom/sonyericsson/conversations/ui/MessageListFragment$3;,
        Lcom/sonyericsson/conversations/ui/MessageListFragment$4;,
        Lcom/sonyericsson/conversations/ui/MessageListFragment$5;,
        Lcom/sonyericsson/conversations/ui/MessageListFragment$6;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBottomShadow:Landroid/view/View;

.field private mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

.field private mClosedByUser:Z

.field private mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mContextMenuForTest:Landroid/view/ContextMenu;

.field private mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

.field private mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

.field private mCurrentStatusPopupMenu:Landroid/widget/PopupMenu;

.field private mDeleteSeveralMenuItem:Landroid/view/MenuItem;

.field private mDeleteTask:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;

.field mDialogFragmentForTest:Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

.field private mFocusedMessageUri:Landroid/net/Uri;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightPattern:Ljava/util/regex/Pattern;

.field private mIsMenuVisible:Z

.field private mIsRcsConfigured:Z

.field private mLastMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mLastUsedConversationKey:Ljava/lang/String;

.field private mLastUsedCursorSize:I

.field mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

.field private mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

.field private mMessageStatusPopupMenuListener:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

.field mMsgListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

.field private mMultiSelectionMode:Landroid/view/ActionMode;

.field private mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

.field private mNeedToUpdateFocus:Z

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPd:Landroid/app/ProgressDialog;

.field private mShowDeleteProgressDlg:Ljava/lang/Runnable;

.field private final mShowOpenProgressDlg:Ljava/lang/Runnable;

.field private mStackedContactBadgeContainer:Landroid/widget/FrameLayout;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mClosedByUser:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mIsRcsConfigured:Z

    return v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCurrentStatusPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/MessageListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mIsRcsConfigured:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/MessageListFragment;I)V
    .locals 0
    .param p1, "deleteCount"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onPostDelete(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onPreDelete()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/ui/MessageListFragment;Z)V
    .locals 0
    .param p1, "yes"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setBottomShadow(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/ui/MessageListFragment;Z)V
    .locals 0
    .param p1, "isInMarkMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMessageListMarkableMode(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/conversations/ui/MessageListFragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "titleId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->showProgressDialog(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->showProgressDlg()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->DEBUG:Z

    .line 102
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 219
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    .line 233
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 235
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    .line 237
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mIsMenuVisible:Z

    .line 239
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mClosedByUser:Z

    .line 241
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 249
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    .line 251
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    .line 253
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 255
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    .line 257
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLastUsedConversationKey:Ljava/lang/String;

    .line 259
    iput v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLastUsedCursorSize:I

    .line 261
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mIsRcsConfigured:Z

    .line 265
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowOpenProgressDlg:Ljava/lang/Runnable;

    .line 272
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .line 520
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$3;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 834
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$4;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    .line 833
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageStatusPopupMenuListener:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

    .line 1359
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMsgListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    .line 1524
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowDeleteProgressDlg:Ljava/lang/Runnable;

    .line 102
    return-void
.end method

.method private deleteMessage()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 793
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v11, 0x1

    .line 794
    .local v11, "isStarred":Z
    :goto_0
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 795
    .local v10, "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v7, 0x0

    .line 796
    .local v7, "checkBoxTextResId":I
    const/4 v8, 0x0

    .line 799
    .local v8, "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    if-eqz v11, :cond_1

    .line 800
    const v9, 0x7f0b01d4

    .line 801
    .local v9, "confirmMessage":I
    const v7, 0x7f0b01d3

    .line 802
    new-instance v8, Lcom/sonyericsson/conversations/ui/MessageListFragment$9;

    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-direct {v8, p0, v10}, Lcom/sonyericsson/conversations/ui/MessageListFragment$9;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 811
    :goto_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;

    invoke-direct {v2, p0, v10}, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 828
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 829
    const v1, 0x7f0b0161

    const v3, 0x7f0b015a

    move-object v5, v4

    .line 828
    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 792
    return-void

    .line 793
    .end local v2    # "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "checkBoxTextResId":I
    .end local v9    # "confirmMessage":I
    .end local v10    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v11    # "isStarred":Z
    :cond_0
    const/4 v11, 0x0

    .restart local v11    # "isStarred":Z
    goto :goto_0

    .line 809
    .restart local v7    # "checkBoxTextResId":I
    .restart local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .restart local v10    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_1
    const v9, 0x7f0b0083

    .restart local v9    # "confirmMessage":I
    goto :goto_1
.end method

.method private dismissOpenProgressDlgDelayed()V
    .locals 2

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowOpenProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1253
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->dismissProgressDialog()V

    .line 1251
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1270
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1273
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 1269
    return-void
.end method

.method private formatViewRecipientsDialogMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p1, "msgUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 912
    const-string/jumbo v2, ""

    .line 913
    .local v2, "info":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8, p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v3

    .line 914
    .local v3, "msg":Lcom/sonyericsson/conversations/model/MmsMessage;
    if-eqz v3, :cond_0

    .line 915
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v5

    .line 917
    .local v5, "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 918
    const v9, 0x7f0b0182

    .line 917
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 920
    .local v6, "to":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getToRecipients()Ljava/util/ArrayList;

    move-result-object v4

    .line 921
    .local v4, "p":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v4}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 924
    .local v7, "toRecipients":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 925
    const v9, 0x7f0b0183

    .line 924
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "cc":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getCcRecipients()Ljava/util/ArrayList;

    move-result-object v4

    .line 927
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v4}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, "ccRecipients":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 931
    const-string/jumbo v8, "%s %s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v6, v9, v10

    aput-object v7, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 936
    .end local v0    # "cc":Ljava/lang/String;
    .end local v1    # "ccRecipients":Ljava/lang/String;
    .end local v4    # "p":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v5    # "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .end local v6    # "to":Ljava/lang/String;
    .end local v7    # "toRecipients":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 933
    .restart local v0    # "cc":Ljava/lang/String;
    .restart local v1    # "ccRecipients":Ljava/lang/String;
    .restart local v4    # "p":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .restart local v5    # "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .restart local v6    # "to":Ljava/lang/String;
    .restart local v7    # "toRecipients":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "%s %s%n%s %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    aput-object v7, v9, v11

    aput-object v0, v9, v12

    const/4 v10, 0x3

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initMessageList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 958
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 959
    .local v0, "listView":Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 960
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 961
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 962
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageStatusPopupMenuListener:Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setMessageStatusPopupMenuListener(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;)V

    .line 968
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 957
    return-void
.end method

.method private isListViewAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 974
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadLastSentMessage(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 1647
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLastMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 1648
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1649
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v0

    .line 1650
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 1651
    sget-object v3, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->COMMON:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    .line 1652
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    move-object v2, p1

    .line 1649
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/conversations/model/ModelCache;->getMessage(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;J)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v6

    .line 1654
    .local v6, "message":Lcom/sonyericsson/conversations/model/Message;
    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLastMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 1655
    return-void

    .line 1657
    .end local v6    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 1658
    const-string/jumbo v0, "No messages found in conversation"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1646
    :cond_1
    return-void
.end method

.method private onPostDelete(I)V
    .locals 6
    .param p1, "deleteCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1544
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setDeletingAllMessages(Z)V

    .line 1545
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowDeleteProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1546
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowDeleteProgressDlg:Ljava/lang/Runnable;

    .line 1547
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1551
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onAllMessagesDeleted()V

    .line 1559
    :cond_1
    :goto_0
    if-ne p1, v5, :cond_3

    .line 1560
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 1561
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 1562
    const v1, 0x7f0b0087

    .line 1561
    invoke-static {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 1543
    :goto_1
    return-void

    .line 1552
    :cond_2
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v0

    .line 1553
    const-wide/16 v2, -0x1

    .line 1552
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1554
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    .line 1553
    invoke-static {v0, v2, v3}, Lcom/sonyericsson/conversations/model/MessageUtil;->getNumberOfXmsMessages(Landroid/content/Context;J)I

    move-result v0

    if-nez v0, :cond_1

    .line 1555
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    .line 1556
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 1555
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->removeConversationFromCache(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    goto :goto_0

    .line 1564
    :cond_3
    if-le p1, v5, :cond_4

    .line 1565
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 1566
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 1567
    const v1, 0x7f0b0088

    .line 1566
    invoke-static {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_1

    .line 1570
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 1571
    const v1, 0x7f0b008a

    .line 1570
    invoke-static {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_1
.end method

.method private onPreDelete()V
    .locals 4

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setDeletingAllMessages(Z)V

    .line 1532
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowDeleteProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1533
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowDeleteProgressDlg:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1530
    return-void
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 296
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    if-eqz v1, :cond_0

    .line 297
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    .line 298
    .local v0, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    const-string/jumbo v4, "FocusedIndex"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/model/MessageListModel;->setFocusedIndex(I)V

    .line 299
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    .line 300
    const-string/jumbo v1, "FocusedUri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 299
    invoke-virtual {v4, v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->setFocusedMessageUri(Landroid/net/Uri;)V

    .line 302
    const-string/jumbo v1, "ThreadId"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 304
    .local v2, "threadId":J
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    .line 305
    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(J)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    .line 304
    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/model/MessageListModel;->setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 293
    .end local v0    # "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    .end local v2    # "threadId":J
    :cond_0
    return-void
.end method

.method private registerJoynListener()V
    .locals 3

    .prologue
    .line 417
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v0

    .line 418
    .local v0, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v0, :cond_0

    .line 419
    invoke-interface {v0, p0}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->registerImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 421
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    .line 422
    .local v1, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    if-eqz v1, :cond_1

    .line 423
    invoke-interface {v1, p0}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->registerFileIconListener(Lcom/sonymobile/jms/message/ImFileIconListener;)V

    .line 416
    :cond_1
    return-void
.end method

.method private setBottomShadow(Z)V
    .locals 3
    .param p1, "yes"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1673
    if-eqz p1, :cond_1

    .line 1674
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1672
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mBottomShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mBottomShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setListViewSelection(I)V
    .locals 3
    .param p1, "listViewIndex"    # I

    .prologue
    .line 1020
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1022
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/widget/ListView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1030
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .line 1031
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;ILandroid/widget/ListView;)V

    .line 1030
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setListItemPopulateListener(Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;)V

    .line 1019
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method private setMarkedListener()V
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$13;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$13;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setMarkedListener(Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;)V

    .line 1116
    return-void
.end method

.method private setMenu(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1321
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteSeveralMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1322
    if-nez p1, :cond_1

    .line 1323
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteSeveralMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1326
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1327
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteSeveralMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1329
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteSeveralMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setMessageListMarkableMode(Z)V
    .locals 3
    .param p1, "isInMarkMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1336
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1337
    const-string/jumbo v1, "setMessageListMarkableMode called when list is not available"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1338
    return-void

    .line 1340
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setMessageListMarkableMode(Z)V

    .line 1341
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1342
    .local v0, "listView":Landroid/widget/ListView;
    if-eqz p1, :cond_1

    .line 1343
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMarkedListener()V

    .line 1344
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1345
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->refresh()V

    .line 1346
    new-instance v1, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    .line 1347
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMsgListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 1348
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 1335
    :goto_0
    return-void

    .line 1350
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 1351
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1352
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->refresh()V

    .line 1353
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 1354
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 1355
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    goto :goto_0
.end method

.method private shouldRefreshStackedBadge()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1667
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    .line 1668
    sget-object v2, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    .line 1667
    if-eq v1, v2, :cond_0

    .line 1668
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v1, :cond_0

    .line 1669
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mStackedContactBadgeContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1667
    :cond_0
    return v0
.end method

.method private showDialog(IILjava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "titleResId"    # I
    .param p2, "iconResId"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "positiveBtnResId"    # I
    .param p5, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negativeBtnResId"    # I
    .param p7, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 946
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 947
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(I)V

    .line 948
    invoke-virtual {v0, p2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIcon(I)V

    .line 949
    invoke-virtual {v0, p3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 950
    invoke-virtual {v0, p4, p5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 951
    invoke-virtual {v0, p6, p7}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 953
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "alert-dialog"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 954
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDialogFragmentForTest:Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    .line 945
    return-void
.end method

.method private showOpenProgressDlgDelayed()V
    .locals 4

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowOpenProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1248
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowOpenProgressDlg:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1246
    return-void
.end method

.method private showProgressDialog(ILjava/lang/String;)V
    .locals 4
    .param p1, "titleId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1258
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1261
    :cond_0
    const-string/jumbo v0, ""

    .line 1262
    .local v0, "title":Ljava/lang/String;
    if-lez p1, :cond_1

    .line 1263
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1266
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, p2, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 1256
    return-void
.end method

.method private showProgressDlg()V
    .locals 5

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1512
    :cond_1
    :goto_0
    return-void

    .line 1518
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, ""

    .line 1519
    const v2, 0x7f0b0057

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1520
    const/4 v4, 0x0

    .line 1518
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private startDeleteSeveralMessages()V
    .locals 1

    .prologue
    .line 1308
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMessageListMarkableMode(Z)V

    .line 1309
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onStartDeleteSeveralMessages()V

    .line 1307
    return-void
.end method

.method private unregisterJoynListener()V
    .locals 3

    .prologue
    .line 428
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v0

    .line 429
    .local v0, "environmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0, p0}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->unregisterImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 432
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    .line 433
    .local v1, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    if-eqz v1, :cond_1

    .line 434
    invoke-interface {v1, p0}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->unregisterFileIconListener(Lcom/sonymobile/jms/message/ImFileIconListener;)V

    .line 427
    :cond_1
    return-void
.end method


# virtual methods
.method public deleteMessages(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "messageKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 757
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteTask:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteTask:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->cancel(Z)Z

    .line 760
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 761
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    .line 762
    new-instance v3, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    .line 760
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteTask:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;

    .line 789
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteTask:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;

    sget-object v1, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->sDeleteTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 756
    return-void
.end method

.method public getLastMessage()Lcom/sonyericsson/conversations/model/Message;
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLastMessage:Lcom/sonyericsson/conversations/model/Message;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 350
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 351
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 352
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    return-void

    .line 355
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 357
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    if-nez v1, :cond_2

    .line 358
    :cond_1
    const-string/jumbo v1, "Activity created but mMessageListModel or Conversation is null."

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 359
    return-void

    .line 362
    :cond_2
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .line 364
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_3

    .line 365
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 370
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 374
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 375
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->initMessageList()V

    .line 376
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setHasOptionsMenu(Z)V

    .line 378
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ConversationsApp;

    .line 379
    .local v0, "app":Lcom/sonyericsson/conversations/ConversationsApp;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1, v0, p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->initModel(Lcom/sonyericsson/conversations/ConversationsApp;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 380
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-eq v1, v2, :cond_5

    .line 381
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->init(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 382
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mStackedContactBadgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setStackedContactBadgeView(Landroid/widget/FrameLayout;)V

    .line 383
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->initExistMessageList(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 384
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->showOpenProgressDlgDelayed()V

    .line 349
    :cond_5
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 390
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 391
    sparse-switch p1, :sswitch_data_0

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 393
    :sswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->refresh()V

    goto :goto_0

    .line 398
    :sswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getClickableController()Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    .line 400
    .local v0, "clickableController":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->shouldSetAudioAsRingtone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setAudioAsRingtone()V

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 406
    const v2, 0x7f0b009a

    .line 407
    const/4 v3, 0x0

    .line 405
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 391
    :sswitch_data_0
    .sparse-switch
        0xadab -> :sswitch_1
        0xbada -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCancelDelete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1537
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setDeletingAllMessages(Z)V

    .line 1538
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 1539
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0087

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 1536
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1059
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1060
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1061
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    .line 1062
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(Landroid/net/Uri;)V

    .line 1058
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x1

    .line 686
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 687
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_1

    .line 688
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 744
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 690
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->resendMessage()V

    .line 691
    return v13

    .line 693
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->resendJoynAsXms()V

    .line 694
    return v13

    .line 696
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->downloadMessage()V

    .line 697
    return v13

    .line 699
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->forwardMessage()V

    .line 700
    return v13

    .line 702
    :pswitch_4
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->deleteMessage()V

    .line 703
    return v13

    .line 706
    :pswitch_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v11, "participantArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v12

    .line 708
    .local v12, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/conversations/model/Participant;

    .line 709
    .local v9, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 712
    .end local v9    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 711
    invoke-static {v0, v11}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->newInstance(Lcom/sonyericsson/conversations/model/Message;Ljava/util/ArrayList;)Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;

    move-result-object v8

    .line 714
    .local v8, "detailsFragment":Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v8, v0, v5}, Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 715
    return v13

    .line 717
    .end local v8    # "detailsFragment":Lcom/sonyericsson/conversations/ui/dialog/MessageDetailsFragment;
    .end local v10    # "p$iterator":Ljava/util/Iterator;
    .end local v11    # "participantArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v12    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :pswitch_6
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->playSlideshow()V

    .line 718
    return v13

    .line 720
    :pswitch_7
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copyTextToClipboard()V

    .line 721
    return v13

    .line 724
    :pswitch_8
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v6}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copySMSToSimCard(Landroid/app/Activity;I)V

    .line 726
    return v13

    .line 728
    :pswitch_9
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v13}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copySMSToSimCard(Landroid/app/Activity;I)V

    .line 730
    return v13

    .line 732
    :pswitch_a
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->replyAll()V

    .line 733
    return v13

    .line 737
    :pswitch_b
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->formatViewRecipientsDialogMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 735
    const v1, 0x7f0b0181

    .line 736
    const v2, 0x7f0200ba

    .line 738
    const v4, 0x104000a

    move-object v0, p0

    move-object v7, v5

    .line 735
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->showDialog(IILjava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 739
    return v13

    .line 741
    :pswitch_c
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->starMessage()V

    .line 742
    return v13

    .line 747
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 688
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 312
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/conversation/Conversation;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 313
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "focusmessageuri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "focusedMessageUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 315
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    .line 317
    :cond_0
    new-instance v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/model/MessageListModel;-><init>(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    .line 310
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/16 v6, 0x70

    const/16 v5, 0x65

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 601
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 602
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onContextMenuCreated()V

    .line 605
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 607
    instance-of v1, p2, Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    if-eqz v1, :cond_c

    .line 608
    check-cast p2, Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .end local p2    # "v":Landroid/view/View;
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 609
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getActionController()Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 610
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-nez v1, :cond_1

    .line 611
    const-string/jumbo v1, "MessageActionsController should not be null"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 612
    return-void

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isCopyVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    const/16 v1, 0x6a

    .line 616
    const v2, 0x7f0b0145

    .line 615
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 618
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isPlaySlideshowVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 619
    const/16 v1, 0x69

    .line 620
    const v2, 0x7f0b009c

    .line 619
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 622
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isResendVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 623
    const/16 v1, 0x64

    .line 624
    const v2, 0x7f0b009b

    .line 623
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 626
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isResendAsSmsVisible()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 628
    const v1, 0x7f0b0207

    .line 627
    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 633
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isDownloadVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 634
    const/16 v1, 0x66

    .line 635
    const v2, 0x7f0b0095

    .line 634
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 637
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isForwardVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 638
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isForwardEnabled()Z

    move-result v1

    .line 637
    if-eqz v1, :cond_7

    .line 639
    const/16 v1, 0x67

    .line 640
    const v2, 0x7f0b0096

    .line 639
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 642
    :cond_7
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isCopySmsToSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 643
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 644
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isSimActive(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 645
    const/16 v1, 0x6c

    .line 646
    const v2, 0x7f0b0147

    .line 645
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 647
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 649
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_8
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isSimActive(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 650
    const/16 v1, 0x6d

    .line 651
    const v2, 0x7f0b0148

    .line 650
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 652
    .restart local v0    # "item":Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 659
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isReplyAllVisible()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 660
    const/16 v1, 0x6e

    const v2, 0x7f0b017e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 662
    :cond_a
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isViewRecipientsVisible()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 663
    const/16 v1, 0x6f

    .line 664
    const v2, 0x7f0b0180

    .line 663
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 667
    :cond_b
    const/16 v1, 0x68

    const v2, 0x7f0b0057

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 668
    const/16 v1, 0x71

    .line 669
    const v2, 0x7f0b0060

    .line 668
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 670
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isStarStatusEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 671
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isStarredMessage()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 673
    const v1, 0x7f0b005f

    .line 672
    invoke-interface {p1, v3, v6, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 680
    :cond_c
    :goto_2
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuForTest:Landroid/view/ContextMenu;

    .line 681
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenu:Landroid/view/ContextMenu;

    .line 600
    return-void

    .line 629
    :cond_d
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isResendAsMmsVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 631
    const v1, 0x7f0b0208

    .line 630
    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 655
    :cond_e
    const/16 v1, 0x6b

    .line 656
    const v2, 0x7f0b0146

    .line 655
    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 676
    :cond_f
    const v1, 0x7f0b005e

    .line 675
    invoke-interface {p1, v3, v6, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflate"    # Landroid/view/MenuInflater;

    .prologue
    .line 1288
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1289
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1290
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1291
    const v1, 0x7f0d0152

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteSeveralMenuItem:Landroid/view/MenuItem;

    .line 1292
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 322
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    .line 324
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    if-nez v1, :cond_0

    .line 325
    new-instance v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/model/MessageListModel;-><init>(Lcom/sonyericsson/conversations/conversation/Conversation;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    .line 328
    :cond_0
    const v1, 0x7f030031

    .line 327
    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, "messageList":Landroid/view/View;
    const v1, 0x7f0d0087

    .line 329
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mStackedContactBadgeContainer:Landroid/widget/FrameLayout;

    .line 332
    const v1, 0x7f0d008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mBottomShadow:Landroid/view/View;

    .line 333
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setBottomShadow(Z)V

    .line 335
    return-object v0
.end method

.method public onDataLoaded(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    .line 439
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    .line 440
    .local v1, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    .line 442
    .local v2, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 444
    .local v7, "listView":Landroid/widget/ListView;
    invoke-virtual {v7}, Landroid/widget/ListView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    .line 445
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-eq v9, v10, :cond_0

    .line 450
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 451
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 452
    const v10, 0x7f040004

    .line 451
    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 453
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 457
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v7    # "listView":Landroid/widget/ListView;
    :cond_0
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    if-eqz v9, :cond_6

    .line 458
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v10}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 463
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->loadLastSentMessage(Landroid/database/Cursor;)V

    .line 465
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    if-eqz v9, :cond_1

    .line 466
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    invoke-interface {v9}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onMsgListLoadFinished()V

    .line 468
    :cond_1
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-eq v9, v10, :cond_4

    .line 470
    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, "conversationKey":Ljava/lang/String;
    if-nez p1, :cond_7

    const/4 v5, 0x0

    .line 475
    .local v5, "cursorSize":I
    :goto_1
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLastUsedConversationKey:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v3, 0x0

    .line 476
    .local v3, "conversationIsChanged":Z
    :goto_2
    if-nez v3, :cond_2

    .line 477
    iget v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLastUsedCursorSize:I

    if-ge v5, v9, :cond_2

    .line 478
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    if-eqz v9, :cond_2

    .line 479
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getMeasuredHeight()I

    move-result v9

    .line 480
    const/16 v10, 0x1000

    .line 479
    if-ge v9, v10, :cond_2

    .line 481
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v9

    .line 482
    const v10, 0x7f060001

    .line 481
    invoke-virtual {v9, v10}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v8

    .line 483
    .local v8, "transition":Landroid/transition/Transition;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-static {v9, v8}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 485
    .end local v8    # "transition":Landroid/transition/Transition;
    :cond_2
    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLastUsedConversationKey:Ljava/lang/String;

    .line 486
    iput v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLastUsedCursorSize:I

    .line 488
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v10

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_3

    .line 490
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 491
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v9, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->updateConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 493
    :cond_3
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v9, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 494
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setWallpaper(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 497
    .end local v3    # "conversationIsChanged":Z
    .end local v4    # "conversationKey":Ljava/lang/String;
    .end local v5    # "cursorSize":I
    :cond_4
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/model/MessageListModel;->getFocusedMessageUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 499
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/model/MessageListModel;->getFocusedMessageUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(Landroid/net/Uri;)V

    .line 500
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sonyericsson/conversations/model/MessageListModel;->setFocusedMessageUri(Landroid/net/Uri;)V

    .line 506
    :goto_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->dismissOpenProgressDlgDelayed()V

    .line 507
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 511
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v9, :cond_5

    .line 512
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v9}, Landroid/view/ActionMode;->invalidate()V

    .line 438
    :cond_5
    return-void

    .line 460
    :cond_6
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->clearHighPattern()V

    goto/16 :goto_0

    .line 471
    .restart local v4    # "conversationKey":Ljava/lang/String;
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .restart local v5    # "cursorSize":I
    goto/16 :goto_1

    .line 475
    :cond_8
    const/4 v3, 0x1

    .restart local v3    # "conversationIsChanged":Z
    goto/16 :goto_2

    .line 502
    .end local v3    # "conversationIsChanged":Z
    .end local v4    # "conversationKey":Ljava/lang/String;
    .end local v5    # "cursorSize":I
    :cond_9
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCount()I

    move-result v6

    .line 503
    .local v6, "lastMessage":I
    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(I)V

    goto :goto_3
.end method

.method public onDataReset()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 516
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 861
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mClosedByUser:Z

    .line 863
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 864
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->cancelSendAnimationsInProgress()V

    .line 871
    :cond_1
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 860
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 876
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteTask:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteTask:Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/DeleteMessagesTask;->cancel(Z)Z

    .line 879
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->dismissOpenProgressDlgDelayed()V

    .line 881
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_2

    .line 886
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 887
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_3

    .line 891
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->clear()V

    .line 894
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_4

    .line 895
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 898
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v0, :cond_5

    .line 899
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 900
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setMessageStatusPopupMenuListener(Lcom/sonyericsson/conversations/ui/controller/MessageStatusController$MessageStatusPopupMenuListener;)V

    .line 903
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    if-eqz v0, :cond_6

    .line 904
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 905
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    .line 908
    :cond_6
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 875
    return-void
.end method

.method public onFileIconStored(Ljava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1630
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$18;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$18;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1629
    return-void
.end method

.method public onImApiConnectionStatusChange(Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;)V
    .locals 2
    .param p1, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .param p2, "imApisConnectionsStatus"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .prologue
    .line 1600
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$17;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$17;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1599
    return-void
.end method

.method public varargs onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1583
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_PRE_DELETE:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1584
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onPreDelete()V

    .line 1582
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_CANCEL_DELETE:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1586
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onCancelDelete()V

    goto :goto_0

    .line 1587
    :cond_2
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_POST_DELETE:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1588
    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1589
    .local v0, "deleteCount":I
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onPostDelete(I)V

    goto :goto_0

    .line 1590
    .end local v0    # "deleteCount":I
    :cond_3
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1591
    aget-object v1, p2, v2

    check-cast v1, Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onDataLoaded(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1592
    :cond_4
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1593
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onDataReset()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onMenuOptionSelected()V

    .line 1299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1304
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1301
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->startDeleteSeveralMessages()V

    .line 1302
    const/4 v0, 0x1

    return v0

    .line 1299
    :pswitch_data_0
    .packed-switch 0x7f0d0152
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1313
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mIsMenuVisible:Z

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMenu(Z)V

    .line 1312
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->shouldRefreshStackedBadge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mStackedContactBadgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setStackedContactBadgeView(Landroid/widget/FrameLayout;)V

    .line 579
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 575
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 288
    const-string/jumbo v0, "FocusedIndex"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getFocusedIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    const-string/jumbo v0, "FocusedUri"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getFocusedMessageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 290
    const-string/jumbo v0, "ThreadId"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 286
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 539
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 541
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 543
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 550
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->registerJoynListener()V

    .line 552
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->preLoadWallpaper(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 553
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/util/ContactLookup;->addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 555
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 556
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v4, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 557
    new-instance v4, Lcom/sonyericsson/conversations/ui/MessageListFragment$7;

    invoke-direct {v4, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$7;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 571
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->refresh()V

    .line 538
    return-void

    .line 544
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getChangeDefaultSmsPackageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 547
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0xbada

    invoke-virtual {v4, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 584
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->unregisterJoynListener()V

    .line 586
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCurrentStatusPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCurrentStatusPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 588
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCurrentStatusPopupMenu:Landroid/widget/PopupMenu;

    .line 590
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 591
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 593
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 594
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 596
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_1
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 583
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 340
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 341
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 344
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 339
    :cond_0
    return-void
.end method

.method protected preLoadWallpaper(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 2
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 1202
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1203
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$14;

    invoke-direct {v1, p0, p1, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$14;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Lcom/sonyericsson/conversations/conversation/ConversationId;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment$14;->start()V

    .line 1201
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    if-nez v0, :cond_0

    .line 1503
    return-void

    .line 1505
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MessageListModel;->forceLoad()V

    .line 1501
    return-void
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    .line 1508
    return-void
.end method

.method public setEditorAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "editorAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setEditorAnimator(Landroid/animation/Animator;)V

    .line 1662
    return-void
.end method

.method public setFocusedMessage(I)V
    .locals 1
    .param p1, "messageIndex"    # I

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/model/MessageListModel;->setFocusedIndex(I)V

    .line 1009
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    if-nez v0, :cond_0

    .line 1011
    return-void

    .line 1013
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    .line 1015
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setListViewSelection(I)V

    .line 1004
    :cond_1
    return-void
.end method

.method public setFocusedMessage(Landroid/net/Uri;)V
    .locals 3
    .param p1, "focusMessageUri"    # Landroid/net/Uri;

    .prologue
    .line 1072
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->setSearchMode(Z)V

    .line 1075
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v1, :cond_1

    .line 1076
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMessageIndexFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 1077
    .local v0, "focusMessageIndex":I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(I)V

    .line 1078
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setSearchedMessageIndex(I)V

    .line 1071
    .end local v0    # "focusMessageIndex":I
    :cond_1
    return-void

    .line 1073
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setFocusedMessageUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "focusedMessageUri"    # Landroid/net/Uri;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->setFocusedMessageUri(Landroid/net/Uri;)V

    .line 280
    return-void
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 1053
    return-void
.end method

.method public setListViewSelectionOnFooter()V
    .locals 4

    .prologue
    .line 1044
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1046
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCount()I

    move-result v1

    .line 1047
    .local v1, "position":I
    const/4 v2, 0x0

    .line 1048
    .local v2, "viewTopPos":I
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1049
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1043
    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "position":I
    .end local v2    # "viewTopPos":I
    :cond_0
    return-void
.end method

.method public setMenuVisibleFlag(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 1317
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mIsMenuVisible:Z

    .line 1316
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1282
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1280
    :cond_0
    return-void
.end method

.method public setUpdateFocus(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 1277
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    .line 1276
    return-void
.end method

.method public setWallpaper(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 4
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 1221
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1222
    sget-boolean v2, Lcom/sonyericsson/conversations/ui/MessageListFragment;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1223
    const-string/jumbo v2, "setWallpaper called when list is not available"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1225
    :cond_0
    return-void

    .line 1227
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1228
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1229
    .local v1, "view":Landroid/view/View;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getWallpaperAsHeavyProperty(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v2

    .line 1231
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v3

    .line 1229
    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    .line 1232
    new-instance v3, Lcom/sonyericsson/conversations/ui/MessageListFragment$15;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment$15;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/view/View;)V

    .line 1229
    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    .line 1238
    new-instance v3, Lcom/sonyericsson/conversations/ui/MessageListFragment$16;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$16;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    .line 1229
    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/PropertyLoader;->onError(Lcom/sonymobile/forklift/OnError;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/forklift/PropertyLoader;->targetView(Landroid/view/View;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/forklift/PropertyLoader;->start()V

    .line 1220
    return-void
.end method

.method public triggerLastXmsInConversationDeletedCallback()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onLastXmsInConversationDeleted(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 855
    return-void
.end method

.method public update(Lcom/sonyericsson/conversations/conversation/Conversation;Z)V
    .locals 7
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "isForceAnimate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1130
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    if-nez v4, :cond_1

    .line 1131
    :cond_0
    return-void

    .line 1130
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isListViewAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1134
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 1136
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 1137
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    .line 1143
    .local v2, "threadId":J
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1144
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1145
    .local v1, "listView":Landroid/widget/ListView;
    if-nez p2, :cond_2

    .line 1146
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_6

    .line 1151
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ListView;->clearAnimation()V

    .line 1152
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v4, v5, :cond_7

    .line 1156
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1174
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_3
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    .line 1175
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/conversations/model/MessageListModel;->setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 1176
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-eq v4, v5, :cond_5

    .line 1177
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v4, :cond_4

    .line 1178
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    if-eqz v4, :cond_8

    .line 1179
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 1183
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->init(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 1184
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mStackedContactBadgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setStackedContactBadgeView(Landroid/widget/FrameLayout;)V

    .line 1188
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1190
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->preLoadWallpaper(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 1191
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v4, p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->loadForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 1129
    :cond_5
    return-void

    .line 1147
    .restart local v1    # "listView":Landroid/widget/ListView;
    :cond_6
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-eq v4, v5, :cond_2

    .line 1170
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 1162
    :cond_7
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1164
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/MessageListModel;->isLoadStarted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1166
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->showOpenProgressDlgDelayed()V

    goto :goto_0

    .line 1181
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_8
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->clearHighPattern()V

    goto :goto_1
.end method
