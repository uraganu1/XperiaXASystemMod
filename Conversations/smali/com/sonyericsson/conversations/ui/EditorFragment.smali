.class public Lcom/sonyericsson/conversations/ui/EditorFragment;
.super Landroid/app/Fragment;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;
.implements Lcom/sonyericsson/conversations/ui/util/IsComposingManager$ComposingListener;
.implements Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;
.implements Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;
.implements Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;,
        Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;,
        Lcom/sonyericsson/conversations/ui/EditorFragment$ConversationDialogFragmentDismissable;,
        Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;,
        Lcom/sonyericsson/conversations/ui/EditorFragment$1;,
        Lcom/sonyericsson/conversations/ui/EditorFragment$2;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

.field private static final DEBUG:Z

.field public static final IME_OPTIONS_PREDICTION_IDENTIFIER:Ljava/lang/String;


# instance fields
.field private mAddRecipientMenuItem:Landroid/view/MenuItem;

.field private mAddSubjectMenuItem:Landroid/view/MenuItem;

.field private mAddToContactMenuItem:Landroid/view/MenuItem;

.field private mBodyInput:Landroid/widget/EditText;

.field private mCallContactMenuItem:Landroid/view/MenuItem;

.field private mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

.field private mClearWallpaperMenuItem:Landroid/view/MenuItem;

.field private mComposer:Lcom/sonyericsson/conversations/ui/Composer;

.field private mConvertToMmsMenuItem:Landroid/view/MenuItem;

.field private mConvertToSmsMenuItem:Landroid/view/MenuItem;

.field mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

.field mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

.field private mEditContainer:Landroid/view/ViewGroup;

.field private mEditorView:Landroid/view/ViewGroup;

.field mEnableForceMessageType:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsActive:Z

.field private mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

.field private mIsMenuVisible:Z

.field private mIsTextMessagingEnabled:Z

.field private mJoynSendingMenuItem:Landroid/view/MenuItem;

.field private mLastActiveSubscriptionId:I

.field private mLeaveChatMenuItem:Landroid/view/MenuItem;

.field private mLeaveConversationTask:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;

.field private mMuteChatMenuItem:Landroid/view/MenuItem;

.field private mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

.field private mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

.field private mPreBtn:Landroid/widget/ImageButton;

.field private mPrioritySelected:I

.field private mPriorityView:Landroid/widget/ImageView;

.field private mRemoveSubjectMenuItem:Landroid/view/MenuItem;

.field private mSendAnimation:Landroid/animation/AnimatorSet;

.field private mSendAnimationActive:Z

.field private mSendButton:Landroid/widget/ImageButton;

.field private mSendButtonClickListener:Landroid/view/View$OnClickListener;

.field private mSetCallContactVisibilityTask:Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;

.field private mSetPriorityMenuItem:Landroid/view/MenuItem;

.field private mSetWallpaperMenuItem:Landroid/view/MenuItem;

.field private mShowEmptySubject:Z

.field private mSmsSendingMenuItem:Landroid/view/MenuItem;

.field private mSubjectChangeListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

.field private mSubjectInput:Landroid/widget/EditText;

.field private mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

.field private mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

.field private mTextTemplateMenuItem:Landroid/view/MenuItem;

.field private mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

.field private mVirtualKeyBoardShowing:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/conversations/ui/EditorFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPrioritySelected:I

    return v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/util/IsComposingManager;)Lcom/sonyericsson/conversations/ui/util/IsComposingManager;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/EditorFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPrioritySelected:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/EditorFragment;FFFZ)V
    .locals 0
    .param p1, "editContainerXCoordinate"    # F
    .param p2, "sendButtonXCoordinate"    # F
    .param p3, "pileViewXCoordinate"    # F
    .param p4, "animate"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->cleanupSendAnimation(FFFZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->delayPrvBtnClickable()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updatePriorityIcon()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->enableDisableSendButton()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->enableTextInput(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->makeSendButtonsVisible()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onComposerStateChanged()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->refreshDualSimButtons()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->refreshIMEAction()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)V
    .locals 0
    .param p1, "isComposingImMessage"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setJoynActive(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->DEBUG:Z

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.sonyericsson.textinput.uxp:app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string/jumbo v1, ";contactId:"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    sput-object v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->IME_OPTIONS_PREDICTION_IDENTIFIER:Ljava/lang/String;

    .line 119
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 337
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLastActiveSubscriptionId:I

    .line 193
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    .line 203
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    .line 205
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsMenuVisible:Z

    .line 214
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEmptySubject:Z

    .line 216
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mVirtualKeyBoardShowing:Z

    .line 219
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    .line 257
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    .line 261
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    .line 264
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 263
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    .line 2283
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2282
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectChangeListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    .line 338
    const-string/jumbo v0, "Empty constructor called, this could lead to strange behavior"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 4
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 343
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLastActiveSubscriptionId:I

    .line 193
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    .line 203
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    .line 205
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsMenuVisible:Z

    .line 214
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEmptySubject:Z

    .line 216
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mVirtualKeyBoardShowing:Z

    .line 219
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    .line 257
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    .line 261
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    .line 264
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 263
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    .line 2283
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2282
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectChangeListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    .line 344
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 342
    return-void
.end method

.method private adaptBackgroundToTheme(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 471
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 473
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 474
    return-object v0
.end method

.method private cleanupSendAnimation(FFFZ)V
    .locals 10
    .param p1, "editContainerXCoordinate"    # F
    .param p2, "sendButtonXCoordinate"    # F
    .param p3, "pileViewXCoordinate"    # F
    .param p4, "animate"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 2205
    iput-boolean v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimationActive:Z

    .line 2206
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 2207
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateTextInputView()V

    .line 2208
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->removeSubjectAndSubjectField()V

    .line 2209
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->enableDisableSendButton()V

    .line 2210
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->setX(F)V

    .line 2211
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p2}, Landroid/widget/ImageButton;->setX(F)V

    .line 2212
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 2213
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 2214
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v4, p3}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->setX(F)V

    .line 2215
    if-eqz p4, :cond_0

    .line 2216
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Landroid/view/ViewGroup;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2217
    .local v0, "containerFadeIn":Landroid/animation/Animator;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2218
    .local v2, "pileviewFadeIn":Landroid/animation/Animator;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2219
    .local v3, "sendFadeIn":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2220
    .local v1, "fadeIn":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2221
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2204
    .end local v0    # "containerFadeIn":Landroid/animation/Animator;
    .end local v1    # "fadeIn":Landroid/animation/AnimatorSet;
    .end local v2    # "pileviewFadeIn":Landroid/animation/Animator;
    .end local v3    # "sendFadeIn":Landroid/animation/Animator;
    :goto_0
    return-void

    .line 2223
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2224
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2225
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v4, v7}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->setAlpha(F)V

    goto :goto_0
.end method

.method private createImeOptions(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;
    .locals 2
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1783
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/sonyericsson/conversations/ui/EditorFragment;->IME_OPTIONS_PREDICTION_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private delayPrvBtnClickable()V
    .locals 4

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1863
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$21;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$21;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1868
    const-wide/16 v2, 0x1f4

    .line 1863
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1860
    :cond_0
    return-void
.end method

.method private enableDisableSendButton()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1631
    iget-boolean v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimationActive:Z

    if-eqz v5, :cond_0

    .line 1632
    return-void

    .line 1634
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v3, 0x1

    .line 1635
    .local v3, "hasRecipients":Z
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isMessageSendable()Z

    move-result v4

    .line 1636
    .local v4, "messageIsSendable":Z
    if-eqz v3, :cond_4

    move v2, v4

    .line 1639
    :goto_1
    if-eqz v2, :cond_1

    .line 1640
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x0

    .line 1644
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v5

    if-eq v2, v5, :cond_2

    .line 1645
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1648
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimActive()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1649
    return-void

    .line 1634
    .end local v3    # "hasRecipients":Z
    .end local v4    # "messageIsSendable":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "hasRecipients":Z
    goto :goto_0

    .line 1636
    .restart local v4    # "messageIsSendable":Z
    :cond_4
    const/4 v2, 0x0

    .local v2, "enableSendButton":Z
    goto :goto_1

    .line 1640
    .end local v2    # "enableSendButton":Z
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "enableSendButton":Z
    goto :goto_2

    .line 1652
    .end local v2    # "enableSendButton":Z
    :cond_6
    const/4 v0, 0x0

    .line 1653
    .local v0, "enableDualSimButton1":Z
    const/4 v1, 0x0

    .line 1654
    .local v1, "enableDualSimButton2":Z
    if-eqz v2, :cond_7

    .line 1655
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v5

    .line 1656
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->getSubscriptionId()I

    move-result v7

    .line 1655
    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isSimReadyForSubId(Landroid/content/Context;IIZ)Z

    move-result v0

    .line 1657
    .local v0, "enableDualSimButton1":Z
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v5

    .line 1658
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->getSubscriptionId()I

    move-result v7

    .line 1657
    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isSimReadyForSubId(Landroid/content/Context;IIZ)Z

    move-result v1

    .line 1661
    .end local v0    # "enableDualSimButton1":Z
    .end local v1    # "enableDualSimButton2":Z
    :cond_7
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->isEnabled()Z

    move-result v5

    if-eq v0, v5, :cond_8

    .line 1662
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setEnabled(Z)V

    .line 1665
    :cond_8
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->isEnabled()Z

    move-result v5

    if-eq v1, v5, :cond_9

    .line 1666
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setEnabled(Z)V

    .line 1630
    :cond_9
    return-void
.end method

.method private enableTextInput(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 2430
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initTextInput()V

    .line 2432
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2433
    if-eqz p1, :cond_5

    .line 2434
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-eqz v0, :cond_4

    .line 2435
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isImTextCapable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isComposingImMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2436
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const v1, 0x7f0b0131

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 2428
    :cond_1
    :goto_0
    return-void

    .line 2437
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->shouldUseGroupMms()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2438
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const v1, 0x7f0b0130

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 2440
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 2443
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setProvisioningDisabledInfo()V

    goto :goto_0

    .line 2446
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_1

    .line 2447
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2449
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    .line 2450
    const v1, 0x7f0b0177

    .line 2449
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0
.end method

.method private getAddContactVisibility()Z
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x1

    .line 850
    const/4 v3, 0x0

    .line 851
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v3

    .line 854
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 855
    .local v2, "participantNumber":I
    if-lt v2, v6, :cond_0

    .line 856
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "participant$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    .line 857
    .local v0, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    .line 858
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 859
    const/4 v3, 0x1

    .line 860
    goto :goto_0
.end method

.method private getAddRecipientVisibility()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 754
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 755
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v2

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled conversation type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 768
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v3

    .line 767
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 770
    return v4

    .line 757
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v2

    return v2

    .line 760
    :pswitch_1
    const/4 v2, 0x1

    return v2

    .line 762
    :pswitch_2
    return v4

    .line 764
    :pswitch_3
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v1

    .line 765
    .local v1, "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonymobile/jms/contact/ImContactApi;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v2

    return v2

    .line 755
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getAddSubjectVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 931
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_0

    .line 932
    return v0

    .line 934
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 948
    return v0

    .line 936
    :pswitch_0
    return v0

    .line 938
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isComposingImMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 939
    return v0

    .line 941
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->subjectVisibilityAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    :cond_2
    return v0

    .line 946
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->subjectVisibilityAllowed()Z

    move-result v0

    return v0

    .line 934
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAddTemplateVisibility()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 914
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-nez v2, :cond_1

    .line 915
    :cond_0
    return v1

    .line 917
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 918
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v0

    .line 919
    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    return v1

    .line 917
    :cond_2
    const/4 v0, 0x0

    .local v0, "addTemplateInVisible":Z
    goto :goto_0

    .line 919
    .end local v0    # "addTemplateInVisible":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getConvertToMmsVisibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1034
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_0

    .line 1035
    return v0

    .line 1037
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableForceMessageType:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1038
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getComposerContentType()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1037
    :cond_1
    return v0
.end method

.method private getConvertToSmsVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1023
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v2, :cond_0

    .line 1024
    return v1

    .line 1026
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableForceMessageType:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1027
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getComposerContentType()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1026
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1027
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1026
    goto :goto_0
.end method

.method private getDeleteSubjectVisibility()Z
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1012
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isSubjectFieldVisible()Z

    move-result v0

    goto :goto_0
.end method

.method private getJoynSendingVisibility()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 835
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isComposingImMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    return v2

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 840
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    .line 838
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->isConversationAbleToUseFallBackTechnology(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 841
    return v2

    .line 843
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getSetPriorityAvailable()Z
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 871
    const/4 v0, 0x0

    return v0

    .line 873
    :cond_0
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->getInstance()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/provider/CapabilityUtil;->isPriorityAvailable()Z

    move-result v0

    return v0
.end method

.method private getSetWallpaperVisibility()Z
    .locals 1

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isCurrentConversationValidForWallPaper()Z

    move-result v0

    return v0
.end method

.method private getSmsSendingVisibility()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 823
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isComposingImMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    return v2

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    .line 826
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->isConversationAbleToUseFallBackTechnology(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 829
    return v2

    .line 831
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getTextTemplateStringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1476
    .local p1, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    const/4 v2, 0x0

    .line 1477
    .local v2, "templateStrings":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1478
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 1479
    new-array v2, v1, [Ljava/lang/String;

    .line 1480
    .local v2, "templateStrings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1481
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v3}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1484
    .end local v0    # "i":I
    .end local v2    # "templateStrings":[Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private hideSubjectField()V
    .locals 2

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1602
    return-void
.end method

.method private initPileView()V
    .locals 3

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    .line 2014
    const v1, 0x7f0d00b4

    .line 2013
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/pileview/PileView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    .line 2015
    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-direct {v0, v1, v2, p0}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/conversations/ui/pileview/PileView;Lcom/sonyericsson/conversations/ui/pileview/PileViewController$ExpandedPileViewController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    .line 2016
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 2018
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$25;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$25;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->setOnContentDeletedListener(Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;)V

    .line 2027
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->setFocusable(Z)V

    .line 2012
    return-void
.end method

.method private initPreviewButton()V
    .locals 3

    .prologue
    .line 1842
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    const v2, 0x7f0d00b5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    .line 1843
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isPreviewButtonAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1844
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$20;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$20;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1856
    .local v0, "previewButtonListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1841
    .end local v0    # "previewButtonListener":Landroid/view/View$OnClickListener;
    :cond_0
    return-void
.end method

.method private initSendButton()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    const v1, 0x7f0d00bd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    .line 1875
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    .line 1876
    const v1, 0x7f0d00bf

    .line 1875
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    .line 1877
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    .line 1878
    const v1, 0x7f0d00be

    .line 1877
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    .line 1880
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$22;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$22;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1924
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1926
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->refreshDualSimButtons()V

    .line 1873
    :cond_0
    return-void
.end method

.method private initSubjectInput()V
    .locals 4

    .prologue
    .line 1790
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 1791
    return-void

    .line 1794
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    const v2, 0x7f0d00b8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    .line 1796
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1797
    new-instance v1, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;-><init>(Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    .line 1802
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 1803
    .local v0, "filter":[Landroid/text/InputFilter;
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1804
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1807
    .end local v0    # "filter":[Landroid/text/InputFilter;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$17;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$17;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1822
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$18;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$18;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1829
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$19;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$19;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1789
    return-void
.end method

.method private initTextInput()V
    .locals 4

    .prologue
    .line 1681
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1682
    :cond_0
    return-void

    .line 1684
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    const v2, 0x7f0d00b9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    .line 1687
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 1688
    .local v0, "filter":[Landroid/text/InputFilter;
    new-instance v1, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/ToastLengthFilter;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1689
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1691
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$14;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$14;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1701
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$15;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$15;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1709
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$16;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$16;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1733
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->refreshIMEAction()V

    .line 1680
    return-void
.end method

.method private initWarningTextView(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1520
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->setTextAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;)V

    .line 1522
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->stop()V

    .line 1523
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    .line 1526
    :cond_0
    const v0, 0x7f0d00b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1529
    .local v5, "typingInfo":Landroid/widget/TextView;
    const v0, 0x7f0d00ba

    .line 1528
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1530
    .local v7, "messageIndicatorInfo":Landroid/widget/TextView;
    const v0, 0x7f0d00ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1531
    .local v8, "resizeInfo":Landroid/view/View;
    const v0, 0x7f0d00b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1533
    .local v9, "resizeProgressTxt":Landroid/widget/TextView;
    const v0, 0x7f0d00af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1535
    .local v10, "resizeInfoThumbnail":Landroid/widget/ImageView;
    const v0, 0x7f0d0016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;

    .line 1537
    .local v11, "badge":Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    if-eqz v7, :cond_2

    .line 1539
    const v0, 0x7f0d00c0

    .line 1538
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1540
    .local v6, "messageTypeInfo":Landroid/widget/TextView;
    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setMessageTypeTextColor(Landroid/widget/TextView;)V

    .line 1541
    const v0, 0x7f020107

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->adaptBackgroundToTheme(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1542
    .local v12, "typingInfoBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1545
    new-instance v0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 1546
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    .line 1545
    invoke-direct/range {v0 .. v11}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;-><init>(Landroid/app/Activity;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    .line 1553
    .end local v6    # "messageTypeInfo":Landroid/widget/TextView;
    .end local v12    # "typingInfoBackground":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_1

    .line 1554
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$12;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$12;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setComposerListener(Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;)V

    .line 1569
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$13;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$13;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->setTextAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;)V

    .line 1581
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->start()V

    .line 1516
    return-void

    .line 1549
    :cond_2
    new-instance v0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 1550
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    .line 1549
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    goto :goto_0
.end method

.method private isAddMediaAvailableInImConversation()Z
    .locals 3

    .prologue
    .line 1000
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 1001
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    .line 1002
    .local v1, "participants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->isImFileTransferCapable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1003
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/capabilites/ConversationCapabilitiesUtil;->isConversationAbleToUseFallBackTechnology(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1004
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAddMediaAvailableInXmsConversation()Z

    move-result v2

    .line 1002
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 1003
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAddMediaAvailableInXmsConversation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 986
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 989
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getCurrentMediaItemNbr()I

    move-result v0

    .line 990
    .local v0, "nbrMediaItems":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    return v1

    .line 987
    .end local v0    # "nbrMediaItems":I
    :cond_1
    return v1

    .line 990
    .restart local v0    # "nbrMediaItems":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isCurrentConversationValidForWallPaper()Z
    .locals 3

    .prologue
    .line 877
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 878
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v1

    .line 879
    .local v1, "wallpaperManager":Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->isWallpaperSupportedFor(Lcom/sonyericsson/conversations/conversation/ConversationId$Type;)Z

    move-result v2

    return v2
.end method

.method private isMessageSendable()Z
    .locals 1

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isComposingImMessage()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubjectFieldVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1016
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isTooltipVisible()Z
    .locals 1

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveImGroupConversation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1118
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 1119
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-nez v0, :cond_0

    .line 1120
    return-void

    .line 1122
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 1123
    .local v1, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-eq v2, v3, :cond_1

    .line 1124
    return-void

    .line 1126
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 1127
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    if-eqz v2, :cond_2

    .line 1128
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->hasNoActivity()V

    .line 1129
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onTypingChanged(Z)V

    .line 1131
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLeaveConversationTask:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;

    if-eqz v2, :cond_3

    .line 1132
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLeaveConversationTask:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->cancel(Z)Z

    .line 1134
    :cond_3
    new-instance v2, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;-><init>(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLeaveConversationTask:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;

    .line 1136
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLeaveConversationTask:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;

    .line 1137
    new-instance v3, Lcom/sonyericsson/conversations/ui/EditorFragment$8;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$8;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 1136
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->registerListener(Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask$LeaveConversationTaskListener;)V

    .line 1160
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLeaveConversationTask:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1117
    return-void
.end method

.method private makeSendButtonsVisible()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2536
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2537
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2538
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setVisibility(I)V

    .line 2539
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setVisibility(I)V

    .line 2535
    :goto_0
    return-void

    .line 2541
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2542
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setVisibility(I)V

    .line 2543
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private onAddRecipient()V
    .locals 10

    .prologue
    .line 1275
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 1276
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 1278
    .local v1, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v6

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adding recipient to unknown conversation type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 1274
    return-void

    .line 1281
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientCount()I

    move-result v3

    .line 1282
    .local v3, "maxRecipients":I
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getRecipientPicker(I)Landroid/content/Intent;

    move-result-object v4

    .line 1285
    .local v4, "recipientPickerIntent":Landroid/content/Intent;
    const/16 v6, 0x68

    .line 1284
    invoke-virtual {p0, v4, v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddRecipientForToField(Landroid/content/Intent;I)V

    .line 1286
    return-void

    .line 1290
    .end local v3    # "maxRecipients":I
    .end local v4    # "recipientPickerIntent":Landroid/content/Intent;
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v6

    .line 1291
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v8

    .line 1290
    invoke-virtual {v6, v7, v8}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getStartGroupChatJoynContactPicker(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v5

    .line 1293
    .local v5, "startGroupChatIntent":Landroid/content/Intent;
    const/16 v6, 0x84

    .line 1292
    invoke-virtual {p0, v5, v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddRecipientForToField(Landroid/content/Intent;I)V

    .line 1294
    return-void

    .line 1297
    .end local v5    # "startGroupChatIntent":Landroid/content/Intent;
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1298
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v9

    .line 1297
    invoke-virtual {v6, v7, v8, v9}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getInviteJoynContactPicker(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v2

    .line 1300
    .local v2, "inviteToGroupChatIntent":Landroid/content/Intent;
    const/16 v6, 0x85

    .line 1299
    invoke-virtual {p0, v2, v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddRecipientForToField(Landroid/content/Intent;I)V

    .line 1301
    return-void

    .line 1303
    .end local v2    # "inviteToGroupChatIntent":Landroid/content/Intent;
    :pswitch_3
    return-void

    .line 1278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onAddSubject()V
    .locals 0

    .prologue
    .line 1267
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showSubjectField()V

    .line 1268
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    .line 1266
    return-void
.end method

.method private onAddTextTemplate()V
    .locals 5

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/template/sms/TextTemplateFactory;->newInstance(Landroid/content/Context;)Lcom/sonymobile/template/sms/TextTemplateManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/template/sms/TextTemplateManager;->loadAllTexTemplate()Ljava/util/ArrayList;

    move-result-object v2

    .line 1316
    .local v2, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getTextTemplateStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 1317
    .local v1, "templateStrings":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1318
    const v3, 0x7f0b01a0

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showNoteDialog(I)V

    .line 1312
    :goto_0
    return-void

    .line 1320
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$9;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment$9;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;[Ljava/lang/String;)V

    .line 1346
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1347
    const v4, 0x7f0b0198

    .line 1346
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private onCallContact()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1460
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1462
    :cond_0
    return-void

    .line 1460
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1469
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1470
    .local v1, "phoneNumber":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v0, "dialerIntent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1472
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->startActivity(Landroid/content/Intent;)V

    .line 1459
    return-void
.end method

.method private onClearWallpaper()V
    .locals 1

    .prologue
    .line 1418
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onWallpaperSelected(Landroid/net/Uri;)V

    .line 1417
    return-void
.end method

.method private onComposerStateChanged()V
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 1620
    :cond_0
    return-void

    .line 1619
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1622
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->enableDisableSendButton()V

    .line 1618
    return-void
.end method

.method private onConvertToMms()V
    .locals 1

    .prologue
    .line 1377
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onConvertToMessageType(I)V

    .line 1376
    return-void
.end method

.method private onConvertToSms()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 1356
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    new-instance v5, Lcom/sonyericsson/conversations/ui/EditorFragment$10;

    invoke-direct {v5, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$10;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1364
    .local v5, "forceMmsPositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x1080027

    .line 1365
    const v3, 0x7f0b0142

    const v4, 0x104000a

    .line 1366
    const/high16 v6, 0x1040000

    move-object v0, p0

    move-object v7, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    move-object v13, v1

    .line 1364
    invoke-direct/range {v0 .. v13}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showDialog(Ljava/lang/String;IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    .line 1355
    .end local v5    # "forceMmsPositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return-void

    .line 1369
    :cond_0
    invoke-virtual {p0, v8}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onConvertToMessageType(I)V

    goto :goto_0
.end method

.method private onRemoveSubject()V
    .locals 0

    .prologue
    .line 1384
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->removeSubjectAndSubjectField()V

    .line 1385
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    .line 1383
    return-void
.end method

.method private onSelectWallpaper()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1392
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v3

    .line 1394
    .local v3, "intentFactory":Lcom/sonyericsson/conversations/ui/IntentFactory;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1395
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getImageContentPicker()Landroid/content/Intent;

    move-result-object v7

    .line 1394
    invoke-virtual {v3, v6, v7}, Lcom/sonyericsson/conversations/ui/IntentFactory;->resolveIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    .line 1396
    .local v4, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "android.permission.CAMERA"

    invoke-static {v6, v7}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1398
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getCameraCapture(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    .line 1397
    invoke-virtual {v3, v6, v7}, Lcom/sonyericsson/conversations/ui/IntentFactory;->resolveIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v5

    .line 1399
    .local v5, "takePictureIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "intent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1400
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1404
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intent$iterator":Ljava/util/Iterator;
    .end local v5    # "takePictureIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_0
    invoke-interface {v4, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 1405
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1406
    const v8, 0x7f0b0058

    .line 1405
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1404
    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1407
    .local v0, "chooserIntent":Landroid/content/Intent;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1408
    const-string/jumbo v7, "android.intent.extra.INITIAL_INTENTS"

    .line 1409
    new-array v6, v9, [Landroid/os/Parcelable;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    .line 1408
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1411
    :cond_1
    const/16 v6, 0x6a

    invoke-direct {p0, v0, v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->startAddMedia(Landroid/content/Intent;I)V

    .line 1391
    return-void
.end method

.method private onSetJoynSendingTechnology()V
    .locals 2

    .prologue
    .line 1491
    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 1492
    .local v0, "newSendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->forceSendingTechAndRefresh(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 1493
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setJoynActive(Z)V

    .line 1490
    return-void
.end method

.method private onSetPriority()V
    .locals 5

    .prologue
    .line 1425
    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 1427
    .local v1, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPrioritySelected:I

    .line 1428
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 1429
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1430
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1431
    const v4, 0x7f0b0075

    .line 1430
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1433
    .local v2, "items":[Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$11;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$11;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1444
    .local v0, "chooseItemListener":Landroid/content/DialogInterface$OnClickListener;
    const v3, 0x7f0b005c

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(I)V

    .line 1445
    iget v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPrioritySelected:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1446
    const v3, 0x7f0b015a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1447
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "alert-dialog"

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1424
    return-void
.end method

.method private onSetSmsSendingTechnology()V
    .locals 2

    .prologue
    .line 1454
    sget-object v0, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->XMS:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    .line 1455
    .local v0, "newSendingTechnology":Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->forceSendingTechAndRefresh(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 1456
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setJoynActive(Z)V

    .line 1453
    return-void
.end method

.method private refreshDualSimButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1935
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v0

    .line 1936
    .local v0, "subscriptionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1937
    return-void

    .line 1940
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setSubscriptionId(I)V

    .line 1941
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setSubscriptionId(I)V

    .line 1943
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setSimCardSlotNumber(I)V

    .line 1944
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setSimCardSlotNumber(I)V

    .line 1946
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1947
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1949
    iget v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLastActiveSubscriptionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1950
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLastActiveSubscriptionId:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->updateButtonImage(I)V

    .line 1951
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    iget v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLastActiveSubscriptionId:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->updateButtonImage(I)V

    .line 1934
    :cond_1
    return-void
.end method

.method private refreshIMEAction()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1737
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1738
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 1739
    :cond_0
    return-void

    .line 1738
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 1742
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getParticipants()Ljava/util/List;

    move-result-object v3

    .line 1745
    .local v3, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v2, 0x0

    .line 1746
    .local v2, "options":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1747
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->createImeOptions(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v2

    .line 1749
    .end local v2    # "options":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 1752
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1753
    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getAllInputRecipientCount()I

    move-result v4

    if-gtz v4, :cond_3

    .line 1755
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v1, 0x1

    .line 1760
    .local v1, "isHaveRecipient":Z
    :goto_0
    if-eqz v1, :cond_7

    .line 1761
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1764
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const v5, 0x7f0b0167

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1765
    const/4 v6, 0x6

    .line 1764
    invoke-virtual {v4, v5, v6}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1736
    :goto_1
    return-void

    .line 1753
    .end local v1    # "isHaveRecipient":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "isHaveRecipient":Z
    goto :goto_0

    .line 1755
    .end local v1    # "isHaveRecipient":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isHaveRecipient":Z
    goto :goto_0

    .line 1757
    .end local v1    # "isHaveRecipient":Z
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_5
    return-void

    .line 1767
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "isHaveRecipient":Z
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    .line 1768
    const v5, 0x7f0b02b4

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1769
    const/16 v6, 0xa

    .line 1767
    invoke-virtual {v4, v5, v6}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 1775
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    .line 1776
    const v5, 0x7f0b02b5

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1777
    const/16 v6, 0xb

    .line 1775
    invoke-virtual {v4, v5, v6}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_1
.end method

.method private removeSubjectAndSubjectField()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2383
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    if-nez v0, :cond_2

    .line 2385
    :cond_1
    return-void

    .line 2384
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimationActive:Z

    .line 2383
    if-nez v0, :cond_1

    .line 2387
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 2389
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2391
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->setSubjectAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;)V

    .line 2392
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->stop()V

    .line 2395
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hideSubjectField()V

    .line 2397
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_4

    .line 2398
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setSubject(Ljava/lang/String;)V

    .line 2400
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 2401
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2382
    :cond_5
    return-void
.end method

.method private requestInputFocus(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2421
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2422
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 2423
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2420
    :cond_0
    return-void
.end method

.method private resetDualSimButtons()V
    .locals 1

    .prologue
    .line 2502
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLastActiveSubscriptionId:I

    .line 2503
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->resetButtonImage()V

    .line 2504
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->resetButtonImage()V

    .line 2501
    return-void
.end method

.method private setClearWallpaperVisibilityAsync(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "clearWallpaperMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 898
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v0

    .line 899
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 900
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    .line 898
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaperAsHeavyProperty(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v0

    .line 901
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v1

    .line 898
    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    .line 902
    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$7;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Landroid/view/MenuItem;)V

    .line 898
    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/forklift/PropertyLoader;->start()V

    .line 895
    return-void
.end method

.method private setJoynActive(Z)V
    .locals 2
    .param p1, "isComposingImMessage"    # Z

    .prologue
    .line 423
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v0

    if-nez v0, :cond_0

    .line 424
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->setJoynMode(Z)V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$3;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
.end method

.method private setLeaveChatVisibilityAsync(Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "leaveChatMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 802
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 803
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-eq v1, v2, :cond_0

    .line 804
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 805
    return-void

    .line 808
    :cond_0
    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$5;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$5;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/Object;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 814
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 808
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment$5;->byDefault(Ljava/lang/Object;)Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v1

    .line 814
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v2

    .line 808
    invoke-virtual {v1, v2}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v1

    .line 814
    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$6;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Landroid/view/MenuItem;)V

    .line 808
    invoke-virtual {v1, v2}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/forklift/PropertyLoader;->forceRefresh()Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/forklift/PropertyLoader;->start()V

    .line 801
    return-void
.end method

.method private setMessageTypeTextColor(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "messageTypeInfo"    # Landroid/widget/TextView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 1587
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1589
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 1588
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1590
    const v1, 0x800003

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1585
    :goto_0
    return-void

    .line 1592
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1593
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1594
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method private setPreBtnVisibility(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    const/16 v1, 0x8

    .line 2508
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 2509
    return-void

    .line 2512
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isPreviewButtonAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2513
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2507
    :goto_0
    return-void

    .line 2515
    :cond_1
    if-eqz p1, :cond_2

    .line 2516
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2518
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setProvisioningDisabledInfo()V
    .locals 2

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2377
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const v1, 0x7f0b0132

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 2378
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2375
    :cond_0
    return-void
.end method

.method private setSubjectFieldVisible()V
    .locals 2

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1598
    return-void
.end method

.method private shallShowTooltip()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2616
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->isConversationVisibile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2617
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isTooltipVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2616
    :cond_0
    :goto_0
    return v0

    .line 2617
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldEnableAddRecipientMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 728
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 729
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v2

    .line 730
    .local v2, "imPermissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v3

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unhandled conversation type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 748
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v4

    .line 747
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 750
    return v5

    .line 732
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 734
    :pswitch_1
    return v5

    .line 739
    :pswitch_2
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImContactApi()Lcom/sonymobile/jms/contact/ImContactApi;

    move-result-object v1

    .line 740
    .local v1, "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sonymobile/jms/contact/ImContactApi;->isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    invoke-interface {v2}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToStartGroupConversation()Z

    move-result v3

    return v3

    .line 743
    :cond_0
    return v5

    .line 745
    .end local v1    # "imContactApi":Lcom/sonymobile/jms/contact/ImContactApi;
    :pswitch_3
    invoke-interface {v2}, Lcom/sonymobile/jms/permission/ImPermissionApi;->isAllowedToStartGroupConversation()Z

    move-result v3

    return v3

    .line 730
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private shouldShowAsActionAddRecipientMenu()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 712
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 713
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v1

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled conversation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 722
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    .line 721
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 724
    return v3

    .line 715
    :pswitch_0
    return v3

    .line 719
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showAddRecipientTooltip()V
    .locals 5

    .prologue
    .line 2590
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2591
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->shallShowTooltip()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2594
    const v3, 0x7f0d0151

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2595
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isRemoving()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2589
    :cond_0
    :goto_0
    return-void

    .line 2592
    .end local v1    # "anchor":Landroid/view/View;
    :cond_1
    return-void

    .line 2596
    .restart local v1    # "anchor":Landroid/view/View;
    :cond_2
    new-instance v2, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;-><init>()V

    .line 2597
    .local v2, "builder":Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;
    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->setAnchorView(Landroid/view/View;)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    move-result-object v3

    .line 2598
    const v4, 0x7f0c00ff

    .line 2597
    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->setWidth(I)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    move-result-object v3

    .line 2599
    const v4, 0x7f0b0251

    .line 2597
    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->setText(I)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    move-result-object v3

    .line 2600
    const v4, 0x7f0c0100

    .line 2597
    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->setTooltipYOffsetResId(I)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    move-result-object v3

    .line 2601
    const/4 v4, 0x0

    .line 2597
    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->placeToolTipAboveAnchor(Z)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    move-result-object v3

    .line 2602
    new-instance v4, Lcom/sonyericsson/conversations/ui/EditorFragment$27;

    invoke-direct {v4, p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment$27;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Landroid/view/View;)V

    .line 2597
    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->setOnTooltipDismissListener(Lcom/sonyericsson/conversations/ui/TooltipDialog$OnTooltipDismissListener;)Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;

    .line 2610
    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/TooltipDialog$Builder;->build(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/TooltipDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    .line 2611
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->showToolTip()V

    goto :goto_0
.end method

.method private showCannotAddAttachmentToast()V
    .locals 3

    .prologue
    .line 2034
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2035
    const v1, 0x7f0b00b9

    .line 2036
    const/4 v2, 0x0

    .line 2034
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 2033
    return-void
.end method

.method private showDialog(Ljava/lang/String;IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconResId"    # I
    .param p3, "messageId"    # I
    .param p4, "positiveBtnResId"    # I
    .param p5, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negativeBtnResId"    # I
    .param p7, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "neutralBtnResId"    # I
    .param p9, "neutralButtonClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p10, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p11, "adapter"    # Landroid/widget/ListAdapter;
    .param p12, "adpterListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p13, "view"    # Landroid/view/View;

    .prologue
    .line 2071
    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 2073
    .local v1, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 2074
    invoke-virtual {v1, p2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIcon(I)V

    .line 2075
    invoke-virtual {v1, p3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setMessage(I)V

    .line 2076
    invoke-virtual {v1, p4, p5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2077
    invoke-virtual {v1, p6, p7}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2078
    invoke-virtual {v1, p8, p9}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2079
    invoke-virtual {v1, p10}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2080
    move-object/from16 v0, p12

    invoke-virtual {v1, p11, v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2082
    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setView(Landroid/view/View;)V

    .line 2084
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "alert-dialog"

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2069
    return-void
.end method

.method private showMasterPileWhenHidden()V
    .locals 1

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->show()V

    .line 2416
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setPreBtnVisibility(Z)V

    .line 2413
    :cond_0
    return-void
.end method

.method private showNoteDialog(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 1505
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 1507
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    const v1, 0x7f0b018b

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 1508
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIcon(I)V

    .line 1509
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIconAttribute(I)V

    .line 1510
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setMessage(I)V

    .line 1511
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1513
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "alert-dialog"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1504
    return-void
.end method

.method private showSubjectField()V
    .locals 3

    .prologue
    .line 2262
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2263
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectChangeListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->setSubjectAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;)V

    .line 2264
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEmptySubject:Z

    .line 2266
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 2267
    .local v0, "subject":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2270
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2271
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2275
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->start()V

    .line 2277
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setSubjectFieldVisible()V

    .line 2278
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->requestEditorFocus()V

    .line 2260
    .end local v0    # "subject":Ljava/lang/String;
    :cond_1
    return-void

    .line 2272
    .restart local v0    # "subject":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2273
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method private startAddMedia(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1957
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1958
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1957
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1959
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1955
    :goto_0
    return-void

    .line 1961
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1962
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1963
    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$23;

    invoke-direct {v2, p0, p1, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment$23;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Landroid/content/Intent;I)V

    .line 1961
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0
.end method

.method private subjectVisibilityAllowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 923
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 924
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isSubjectFieldVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAddRecipientMenuItem(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "addRecipientMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->shouldShowAsActionAddRecipientMenu()Z

    move-result v1

    .line 702
    .local v1, "showAsActionAddRecipientMenu":Z
    if-eqz v1, :cond_0

    .line 703
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->shouldEnableAddRecipientMenu()Z

    move-result v0

    .line 705
    .local v0, "enableAddRecipientMenu":Z
    if-eqz v0, :cond_1

    const v2, 0x7f020033

    .line 704
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 707
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 700
    .end local v0    # "enableAddRecipientMenu":Z
    :cond_0
    return-void

    .line 706
    .restart local v0    # "enableAddRecipientMenu":Z
    :cond_1
    const v2, 0x7f020032

    goto :goto_0
.end method

.method private updateCounterAndButtons()V
    .locals 1

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 2318
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->makeSendButtonsVisible()V

    .line 2313
    return-void

    .line 2315
    :cond_0
    return-void
.end method

.method private updateMediaPreview(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2328
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    if-nez v1, :cond_1

    .line 2330
    :cond_0
    return-void

    .line 2329
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_0

    .line 2332
    if-nez p1, :cond_3

    .line 2333
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->hide()V

    .line 2334
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setPreBtnVisibility(Z)V

    .line 2335
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-nez v1, :cond_2

    .line 2336
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setProvisioningDisabledInfo()V

    .line 2321
    :cond_2
    :goto_0
    return-void

    .line 2338
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2339
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->enableTextInput(Z)V

    .line 2341
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSupportedMediaItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 2343
    .local v0, "mediaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2344
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->update()V

    .line 2345
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->show()V

    .line 2346
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setPreBtnVisibility(Z)V

    .line 2347
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->requestEditorFocus()V

    goto :goto_0

    .line 2349
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->hide()V

    .line 2350
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setPreBtnVisibility(Z)V

    goto :goto_0

    .line 2353
    .end local v0    # "mediaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->update()V

    .line 2356
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->enableTextInput(Z)V

    .line 2357
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hideSubjectField()V

    .line 2358
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setShowEmptySubject(Z)V

    .line 2359
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->show()V

    .line 2360
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setPreBtnVisibility(Z)V

    goto :goto_0
.end method

.method private updateMenuEditItems(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddSubjectMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddSubjectMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 779
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToSmsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 780
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToMmsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 781
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRemoveSubjectMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 782
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextTemplateMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 776
    :cond_0
    return-void
.end method

.method private updatePriorityIcon()V
    .locals 2

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2298
    :goto_0
    return-void

    .line 2302
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPriorityView:Landroid/widget/ImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2303
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPriorityView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2306
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPriorityView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSubjectInputView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2237
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getComposerContentType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getComposerContentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2239
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 2238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2244
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isShowEmptySubject()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2247
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->removeSubjectAndSubjectField()V

    .line 2249
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setShowEmptySubject(Z)V

    .line 2236
    return-void

    .line 2240
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 2239
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v0

    .line 2237
    if-eqz v0, :cond_1

    .line 2243
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showSubjectField()V

    goto :goto_0
.end method

.method private updateTextInputView()V
    .locals 4

    .prologue
    .line 2122
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-nez v2, :cond_1

    .line 2123
    :cond_0
    return-void

    .line 2126
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    .line 2127
    .local v0, "isTextChangeListenerAvailable":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2130
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->update()V

    .line 2133
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2134
    :cond_3
    return-void

    .line 2126
    .end local v0    # "isTextChangeListenerAvailable":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isTextChangeListenerAvailable":Z
    goto :goto_0

    .line 2128
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 2137
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v1

    .line 2139
    .local v1, "messageText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-eqz v2, :cond_9

    .line 2140
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2144
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 2148
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 2149
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2116
    :cond_8
    return-void

    .line 2145
    :cond_9
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimationActive:Z

    if-nez v2, :cond_7

    .line 2146
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    goto :goto_2
.end method


# virtual methods
.method public addAttachment(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;)Z
    .locals 4
    .param p1, "attachment"    # Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2702
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->canAddMoreAttachments()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2703
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showCannotAddAttachmentToast()V

    .line 2704
    return v2

    .line 2706
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;)V

    .line 2707
    .local v0, "addMediaTask":Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;
    new-array v1, v3, [Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment$AddAttachmentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2708
    return v3
.end method

.method public canAddMoreAttachments()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 954
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 955
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-nez v0, :cond_0

    .line 956
    return v4

    .line 959
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v2

    if-nez v2, :cond_1

    .line 960
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAddMediaAvailableInXmsConversation()Z

    move-result v1

    return v1

    .line 963
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 975
    return v4

    .line 965
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAddMediaAvailableInImConversation()Z

    move-result v1

    return v1

    .line 967
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAddMediaAvailableInXmsConversation()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAddMediaAvailableInImConversation()Z

    move-result v1

    :cond_2
    return v1

    .line 969
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAddMediaAvailableInXmsConversation()Z

    move-result v1

    return v1

    .line 973
    :pswitch_3
    return v1

    .line 963
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentMessageSize()I
    .locals 2

    .prologue
    .line 2048
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_0

    .line 2049
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 2050
    .local v0, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_0

    .line 2051
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v1

    return v1

    .line 2054
    .end local v0    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getCurrentRemainingSize()I
    .locals 2

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isComposingImMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sonymobile/jms/ImApiHolder;->getApis()Lcom/sonymobile/jms/ImApis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/ImApis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/setting/ImSettingApi;->getFileWarningSize()I

    move-result v0

    :goto_0
    return v0

    .line 2042
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v0

    .line 2043
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getCurrentMessageSize()I

    move-result v1

    .line 2042
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getEditTextView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMuteChatVisibility()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 791
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 792
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-eq v3, v4, :cond_0

    .line 793
    return v2

    .line 796
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 798
    .local v1, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->isGroupChatMuted(Lcom/sonyericsson/conversations/conversation/ConversationId;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getSendAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public handleClosingOfExpandedPileActivity(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2645
    .local p1, "removedItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonyericsson/conversations/ui/pileview/PileItem;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->deletePileItems(Ljava/util/Set;)V

    .line 2644
    return-void
.end method

.method public hidePileView()V
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->hide()V

    .line 2088
    :cond_0
    return-void
.end method

.method public isComposingImMessage()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isComposingImMessage()Z

    move-result v0

    return v0
.end method

.method public isSending()Z
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->isSending()Z

    move-result v0

    return v0

    .line 1190
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowEmptySubject()Z
    .locals 1

    .prologue
    .line 2253
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEmptySubject:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 510
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onEditorFragmentAttached()V

    .line 508
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2626
    sparse-switch p1, :sswitch_data_0

    .line 2625
    :cond_0
    :goto_0
    return-void

    .line 2628
    :sswitch_0
    invoke-static {p3}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->getRemovedItems(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleClosingOfExpandedPileActivity(Ljava/util/Set;)V

    goto :goto_0

    .line 2631
    :sswitch_1
    if-eqz p3, :cond_0

    .line 2632
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onWallpaperSelected(Landroid/net/Uri;)V

    goto :goto_0

    .line 2626
    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_1
        0xd6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAddAttachmentPostExecute(Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;)V
    .locals 3
    .param p1, "attachmentResult"    # Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;

    .prologue
    const/4 v2, 0x1

    .line 2653
    if-nez p1, :cond_0

    .line 2654
    return-void

    .line 2657
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;->code:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    sget-object v1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;->OK:Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$AttachmentResultCode;

    if-eq v0, v1, :cond_1

    .line 2658
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Result;->errorTextCode:I

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 2660
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateTextInputView()V

    .line 2661
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMediaPreview(Z)V

    .line 2662
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    .line 2663
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onComposerStateChanged()V

    .line 2652
    return-void
.end method

.method public onAddRecipientForToField(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onAddRecipientForToField(Landroid/content/Intent;I)V

    .line 1194
    :cond_0
    return-void
.end method

.method public onAddToContact()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onAddToContact()V

    .line 1201
    :cond_0
    return-void
.end method

.method public onClickPreBtn()V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onClickPreBtn()V

    .line 1208
    :cond_0
    return-void
.end method

.method public onClickSendMessage(I)V
    .locals 1
    .param p1, "subscriptionId"    # I

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->delayPrvBtnClickable()V

    .line 1180
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onClickSendMessage(I)V

    .line 1178
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2407
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2409
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showMasterPileWhenHidden()V

    .line 2410
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->requestInputFocus(Landroid/content/res/Configuration;)V

    .line 2406
    return-void
.end method

.method public onConvertToMessageType(I)V
    .locals 1
    .param p1, "messageType"    # I

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onConvertToMessageType(I)V

    .line 1215
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 350
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnableForceMessageType()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableForceMessageType:Z

    .line 352
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 353
    const-string/jumbo v1, "input_method"

    .line 352
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 348
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflate"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 554
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 556
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 557
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 559
    const v1, 0x7f0d0146

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddSubjectMenuItem:Landroid/view/MenuItem;

    .line 561
    const v1, 0x7f0d0151

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddRecipientMenuItem:Landroid/view/MenuItem;

    .line 563
    const v1, 0x7f0d0143

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMuteChatMenuItem:Landroid/view/MenuItem;

    .line 564
    const v1, 0x7f0d0147

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLeaveChatMenuItem:Landroid/view/MenuItem;

    .line 570
    const v1, 0x7f0d0144

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToSmsMenuItem:Landroid/view/MenuItem;

    .line 571
    const v1, 0x7f0d0145

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToMmsMenuItem:Landroid/view/MenuItem;

    .line 574
    const v1, 0x7f0d0148

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRemoveSubjectMenuItem:Landroid/view/MenuItem;

    .line 575
    const v1, 0x7f0d0149

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextTemplateMenuItem:Landroid/view/MenuItem;

    .line 578
    const v1, 0x7f0d014a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddToContactMenuItem:Landroid/view/MenuItem;

    .line 580
    const v1, 0x7f0d014d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetPriorityMenuItem:Landroid/view/MenuItem;

    .line 583
    const v1, 0x7f0d014e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSmsSendingMenuItem:Landroid/view/MenuItem;

    .line 586
    const v1, 0x7f0d014f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mJoynSendingMenuItem:Landroid/view/MenuItem;

    .line 589
    const v1, 0x7f0d014b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetWallpaperMenuItem:Landroid/view/MenuItem;

    .line 590
    const v1, 0x7f0d014c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mClearWallpaperMenuItem:Landroid/view/MenuItem;

    .line 593
    const v1, 0x7f0d0150

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallContactMenuItem:Landroid/view/MenuItem;

    .line 595
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-nez v1, :cond_0

    .line 596
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMenuEditItems(Z)V

    .line 597
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddRecipientMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 553
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddRecipientMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 363
    :cond_0
    const v0, 0x7f03003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 362
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    .line 365
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initPileView()V

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    const v1, 0x7f0d00b7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Landroid/view/ViewGroup;

    .line 369
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initSubjectInput()V

    .line 370
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initTextInput()V

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initWarningTextView(Landroid/view/View;)V

    .line 374
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initSendButton()V

    .line 375
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initPreviewButton()V

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    const v1, 0x7f0d00bc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPriorityView:Landroid/widget/ImageView;

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsActive:Z

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 515
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 517
    sget-boolean v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 518
    const-string/jumbo v0, "#onDestroy()"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 526
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setComposerListener(Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;)V

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->setTextAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;)V

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->stop()V

    .line 536
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    if-eqz v0, :cond_4

    .line 540
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->setSubjectAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;)V

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->stop()V

    .line 544
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    if-eqz v0, :cond_5

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->setOnContentDeletedListener(Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;)V

    .line 549
    :cond_5
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->removeSubscriptionsUpdatedListener()V

    .line 514
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsActive:Z

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/IsComposingManager;->hasNoActivity()V

    .line 461
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsComposingWatcher:Lcom/sonyericsson/conversations/ui/util/IsComposingManager;

    .line 462
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 456
    return-void
.end method

.method public onEditorContentChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2525
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2526
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->enableDisableSendButton()V

    .line 2524
    :goto_0
    return-void

    .line 2528
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2529
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton1:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setEnabled(Z)V

    .line 2530
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mDualSimSendButton2:Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationDualSimSendButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onEditorFragmentAttached()V
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onEditorFragmentAttached()V

    .line 1164
    :cond_0
    return-void
.end method

.method public onLeaveImGroupConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 1
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onLeaveImGroupConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    .line 1257
    :cond_0
    return-void
.end method

.method public onMenuClicked()V
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onMenuClicked()V

    .line 1250
    :cond_0
    return-void
.end method

.method public onMuteGroupConversation()V
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onMuteGroupConversation()V

    .line 1243
    :cond_0
    return-void
.end method

.method public onOpenExpandedPileView(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/pileview/PileItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2367
    .local p1, "pileItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/pileview/PileItem;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2366
    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/ui/pileview/ExpandedPileViewActivity;->makePreviewIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 2368
    .local v0, "expandedPileViewIntent":Landroid/content/Intent;
    const/16 v1, 0xd6

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2365
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 1043
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onMenuClicked()V

    .line 1045
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1113
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 1047
    :pswitch_0
    const-string/jumbo v1, "message_list"

    const-string/jumbo v2, "add_subject"

    invoke-static {v1, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddSubject()V

    .line 1050
    return v4

    .line 1052
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->shouldEnableAddRecipientMenu()Z

    move-result v0

    .line 1053
    .local v0, "addRecipientMenuEnabled":Z
    if-eqz v0, :cond_0

    .line 1054
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddRecipient()V

    .line 1060
    :goto_0
    return v4

    .line 1056
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1057
    const v2, 0x7f0b0233

    .line 1058
    const/4 v3, 0x0

    .line 1056
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1062
    .end local v0    # "addRecipientMenuEnabled":Z
    :pswitch_2
    const-string/jumbo v1, "templates"

    .line 1063
    const-string/jumbo v2, "listed"

    .line 1062
    invoke-static {v1, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddTextTemplate()V

    .line 1066
    return v4

    .line 1068
    :pswitch_3
    const-string/jumbo v1, "conversation_wallpapers"

    .line 1069
    const-string/jumbo v2, "set"

    .line 1068
    invoke-static {v1, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onSelectWallpaper()V

    .line 1072
    return v4

    .line 1074
    :pswitch_4
    const-string/jumbo v1, "conversation_wallpapers"

    .line 1075
    const-string/jumbo v2, "cleared"

    .line 1074
    invoke-static {v1, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onClearWallpaper()V

    .line 1078
    return v4

    .line 1080
    :pswitch_5
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onConvertToSms()V

    .line 1081
    return v4

    .line 1083
    :pswitch_6
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onConvertToMms()V

    .line 1084
    return v4

    .line 1086
    :pswitch_7
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onMuteGroupConversation()V

    .line 1087
    return v4

    .line 1089
    :pswitch_8
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->leaveImGroupConversation()V

    .line 1090
    return v4

    .line 1092
    :pswitch_9
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onRemoveSubject()V

    .line 1093
    return v4

    .line 1095
    :pswitch_a
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddToContact()V

    .line 1096
    return v4

    .line 1098
    :pswitch_b
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onSetPriority()V

    .line 1099
    return v4

    .line 1101
    :pswitch_c
    const-string/jumbo v1, "message_list"

    .line 1102
    const-string/jumbo v2, "call_contact"

    .line 1101
    invoke-static {v1, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onCallContact()V

    .line 1105
    return v4

    .line 1107
    :pswitch_d
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onSetSmsSendingTechnology()V

    .line 1108
    return v4

    .line 1110
    :pswitch_e
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onSetJoynSendingTechnology()V

    .line 1111
    return v4

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0143
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_1
    .end packed-switch
.end method

.method public onPileViewContentDeleted()V
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onPileViewContentDeleted()V

    .line 1171
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsMenuVisible:Z

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setMenu(Z)V

    .line 604
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1976
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1977
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setHasOptionsMenu(Z)V

    .line 1978
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTextMessagingEnabled()Z

    move-result v0

    .line 1979
    .local v0, "isTextMessagingEnabled":Z
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-eq v0, v3, :cond_0

    .line 1980
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    .line 1981
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMenuEditItems(Z)V

    .line 1983
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-nez v3, :cond_1

    .line 1984
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->removeSubjectAndSubjectField()V

    .line 1985
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1986
    const v5, 0x7f0e0049

    .line 1985
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1991
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateTextInputView()V

    .line 1992
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMediaPreview(Z)V

    .line 1993
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    .line 1996
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    const v4, 0x7f0d00bb

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1997
    .local v1, "sendButtonContainer":Landroid/view/View;
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1999
    .end local v1    # "sendButtonContainer":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->enableDisableSendButton()V

    .line 2000
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v2

    .line 2001
    new-instance v3, Lcom/sonyericsson/conversations/ui/EditorFragment$24;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$24;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2000
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->setSubscriptionsUpdatedListener(Lcom/sonyericsson/conversations/util/SubscriptionUtil$SubscriptionsUpdatedListener;)V

    .line 1975
    return-void

    .line 1988
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1997
    .restart local v1    # "sendButtonContainer":Landroid/view/View;
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 388
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v0

    .line 389
    .local v0, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->registerImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 386
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 396
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 398
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->dismiss()V

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLeaveConversationTask:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;

    if-eqz v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLeaveConversationTask:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;->cancel(Z)Z

    .line 408
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLeaveConversationTask:Lcom/sonyericsson/conversations/conversation/action/LeaveConversationTask;

    .line 410
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v0

    .line 411
    .local v0, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v0, :cond_3

    .line 413
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    .line 412
    invoke-interface {v0, v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->unregisterImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 395
    :cond_3
    return-void
.end method

.method public onSubjectFieldClicked()V
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onSubjectFieldClicked()V

    .line 1236
    :cond_0
    return-void
.end method

.method public onTypingChanged(Z)V
    .locals 4
    .param p1, "isTyping"    # Z

    .prologue
    .line 2550
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 2552
    .local v1, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v0

    .line 2553
    .local v0, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    sget-object v2, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-eq v1, v2, :cond_0

    .line 2554
    if-nez v0, :cond_1

    .line 2555
    :cond_0
    return-void

    .line 2557
    :cond_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;

    invoke-direct {v2, v0, v1, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;-><init>(Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/conversation/ImConversationId;Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment$SendIsComposingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2548
    return-void
.end method

.method public onWallpaperSelected(Landroid/net/Uri;)V
    .locals 1
    .param p1, "wallpaper"    # Landroid/net/Uri;

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->onWallpaperSelected(Landroid/net/Uri;)V

    .line 1229
    :cond_0
    return-void
.end method

.method public requestEditorFocus()V
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;->requestEditorFocus()V

    .line 1222
    :cond_0
    return-void
.end method

.method public runSendAnimation()V
    .locals 10

    .prologue
    const v8, 0x7f050001

    const/4 v9, 0x1

    .line 2160
    iput-boolean v9, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimationActive:Z

    .line 2161
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimation:Landroid/animation/AnimatorSet;

    .line 2162
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    .line 2163
    .local v3, "startXCoordinateEditContainer":F
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getX()F

    move-result v5

    .line 2164
    .local v5, "startXCoordinateSendButton":F
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->getX()F

    move-result v4

    .line 2167
    .local v4, "startXCoordinatePileView":F
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f050003

    .line 2166
    invoke-static {v6, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    .line 2168
    .local v2, "sendButtonAnimator":Landroid/animation/AnimatorSet;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 2170
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 2169
    invoke-static {v6, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 2171
    .local v0, "editContainerAnimator":Landroid/animation/AnimatorSet;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 2175
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 2174
    invoke-static {v6, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 2176
    .local v1, "pileViewAnimator":Landroid/animation/AnimatorSet;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 2178
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimation:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    aput-object v0, v7, v9

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2179
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/sonyericsson/conversations/ui/EditorFragment$26;

    invoke-direct {v7, p0, v3, v5, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment$26;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;FFF)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2200
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 2159
    return-void
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    .prologue
    .line 2456
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    .line 2455
    return-void
.end method

.method public setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 4
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    const/4 v3, 0x0

    .line 2460
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 2462
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2463
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->resetDualSimButtons()V

    .line 2466
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 2467
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    if-eqz v0, :cond_1

    .line 2468
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->setTextAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;)V

    .line 2469
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->stop()V

    .line 2470
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    .line 2471
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initWarningTextView(Landroid/view/View;)V

    .line 2474
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    if-eqz v0, :cond_3

    .line 2475
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->setSubjectAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;)V

    .line 2476
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->stop()V

    .line 2477
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2478
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isSubjectFieldVisible()Z

    move-result v0

    .line 2477
    if-eqz v0, :cond_2

    .line 2481
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->removeSubjectAndSubjectField()V

    .line 2483
    :cond_2
    new-instance v0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;-><init>(Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    .line 2486
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    if-eqz v0, :cond_4

    .line 2487
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileView:Lcom/sonyericsson/conversations/ui/pileview/PileView;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/pileview/PileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2490
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    if-eqz v0, :cond_5

    .line 2491
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 2492
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPileViewController:Lcom/sonyericsson/conversations/ui/pileview/PileViewController;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/pileview/PileViewController;->setOnContentDeletedListener(Lcom/sonyericsson/conversations/ui/pileview/PileViewController$OnContentDeletedListener;)V

    .line 2493
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initPileView()V

    .line 2496
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isComposingImMessage()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setJoynActive(Z)V

    .line 2498
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->refreshIMEAction()V

    .line 2459
    return-void
.end method

.method public setKeyboardState(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 487
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 488
    return-void

    .line 490
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 491
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonyericsson/conversations/ui/EditorFragment$4;

    invoke-direct {v3, p0, p1, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment$4;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;ZLandroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method

.method public setLastMessage(Lcom/sonyericsson/conversations/model/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 2567
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2568
    return-void

    .line 2570
    :cond_0
    const/4 v0, -0x1

    .line 2572
    .local v0, "lastActiveSubscriptionId":I
    instance-of v1, p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v1, :cond_4

    .line 2573
    check-cast p1, Lcom/sonyericsson/conversations/model/SmsMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getSubscriptionId()I

    move-result v0

    .line 2578
    :cond_1
    :goto_0
    iput v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLastActiveSubscriptionId:I

    .line 2580
    sget-boolean v1, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v1, :cond_2

    .line 2581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LastActiveSubscriptionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLastActiveSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2584
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2585
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->refreshDualSimButtons()V

    .line 2566
    :cond_3
    return-void

    .line 2574
    .restart local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_4
    instance-of v1, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v1, :cond_1

    .line 2575
    check-cast p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local p1    # "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubscriptionId()I

    move-result v0

    goto :goto_0
.end method

.method public setMenu(Z)V
    .locals 11
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 613
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddSubjectMenuItem:Landroid/view/MenuItem;

    if-eqz v6, :cond_3

    .line 614
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddSubjectMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getAddSubjectVisibility()Z

    move-result v6

    :goto_0
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 615
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getAddRecipientVisibility()Z

    move-result v0

    .line 616
    :goto_1
    if-eqz v0, :cond_0

    .line 617
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddRecipientMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateAddRecipientMenuItem(Landroid/view/MenuItem;)V

    .line 619
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddRecipientMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 620
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToSmsMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getConvertToSmsVisibility()Z

    move-result v6

    :goto_2
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 621
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToMmsMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getConvertToMmsVisibility()Z

    move-result v6

    :goto_3
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 622
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRemoveSubjectMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getDeleteSubjectVisibility()Z

    move-result v6

    :goto_4
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 623
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextTemplateMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getAddTemplateVisibility()Z

    move-result v6

    :goto_5
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 624
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddToContactMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getAddContactVisibility()Z

    move-result v6

    :goto_6
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 625
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetPriorityMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getSetPriorityAvailable()Z

    move-result v6

    :goto_7
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 626
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMuteChatMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getMuteChatVisibility()Z

    move-result v6

    :goto_8
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 627
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSmsSendingMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getSmsSendingVisibility()Z

    move-result v6

    :goto_9
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 628
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mJoynSendingMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getJoynSendingVisibility()Z

    move-result v6

    :goto_a
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 629
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetWallpaperMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getSetWallpaperVisibility()Z

    move-result v6

    :goto_b
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 631
    if-eqz p1, :cond_10

    .line 632
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mClearWallpaperMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setClearWallpaperVisibilityAsync(Landroid/view/MenuItem;)V

    .line 633
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLeaveChatMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setLeaveChatVisibilityAsync(Landroid/view/MenuItem;)V

    .line 639
    :goto_c
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    .line 640
    .local v4, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz p1, :cond_13

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v10, :cond_13

    .line 641
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/Participant;->getLookedUpAddress()Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "address":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    .line 643
    .local v3, "isValidNumber":Z
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/AddressUtil;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    .line 645
    .local v2, "isEmailAddress":Z
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetCallContactVisibilityTask:Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;

    if-eqz v6, :cond_1

    .line 646
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetCallContactVisibilityTask:Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;

    invoke-virtual {v6, v10}, Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;->cancel(Z)Z

    .line 647
    iput-object v9, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetCallContactVisibilityTask:Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;

    .line 650
    :cond_1
    if-eqz v3, :cond_11

    .line 651
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallContactMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 665
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "isEmailAddress":Z
    .end local v3    # "isValidNumber":Z
    :cond_2
    :goto_d
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    .line 666
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->shouldEnableAddRecipientMenu()Z

    move-result v6

    .line 665
    if-eqz v6, :cond_3

    .line 666
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    if-eqz v6, :cond_14

    .line 667
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTooltipDialog:Lcom/sonyericsson/conversations/ui/TooltipDialog;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/TooltipDialog;->isShowing()Z

    move-result v6

    .line 666
    if-eqz v6, :cond_14

    .line 612
    .end local v4    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_3
    :goto_e
    return-void

    :cond_4
    move v6, v7

    .line 614
    goto/16 :goto_0

    .line 615
    :cond_5
    const/4 v0, 0x0

    .local v0, "addRecipientMenuVisibility":Z
    goto/16 :goto_1

    .end local v0    # "addRecipientMenuVisibility":Z
    :cond_6
    move v6, v7

    .line 620
    goto/16 :goto_2

    :cond_7
    move v6, v7

    .line 621
    goto/16 :goto_3

    :cond_8
    move v6, v7

    .line 622
    goto/16 :goto_4

    :cond_9
    move v6, v7

    .line 623
    goto/16 :goto_5

    :cond_a
    move v6, v7

    .line 624
    goto/16 :goto_6

    :cond_b
    move v6, v7

    .line 625
    goto/16 :goto_7

    :cond_c
    move v6, v7

    .line 626
    goto/16 :goto_8

    :cond_d
    move v6, v7

    .line 627
    goto/16 :goto_9

    :cond_e
    move v6, v7

    .line 628
    goto/16 :goto_a

    :cond_f
    move v6, v7

    .line 629
    goto/16 :goto_b

    .line 635
    :cond_10
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mClearWallpaperMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 636
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mLeaveChatMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_c

    .line 652
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "isEmailAddress":Z
    .restart local v3    # "isValidNumber":Z
    .restart local v4    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_11
    if-nez v1, :cond_12

    .line 656
    new-instance v6, Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallContactMenuItem:Landroid/view/MenuItem;

    invoke-direct {v6, v8}, Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;-><init>(Landroid/view/MenuItem;)V

    .line 655
    iput-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetCallContactVisibilityTask:Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;

    .line 657
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetCallContactVisibilityTask:Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;

    new-array v9, v10, [Lcom/sonyericsson/conversations/model/Participant;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/model/Participant;

    aput-object v6, v9, v7

    invoke-virtual {v8, v9}, Lcom/sonyericsson/conversations/ui/EditorFragment$SetCallContactVisibilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d

    .line 658
    :cond_12
    if-eqz v2, :cond_2

    .line 659
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallContactMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d

    .line 662
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "isEmailAddress":Z
    .end local v3    # "isValidNumber":Z
    :cond_13
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallContactMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d

    .line 668
    :cond_14
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v5

    .line 669
    .local v5, "settingsManager":Lcom/sonyericsson/conversations/settings/SettingsManager;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/settings/SettingsManager;->shouldShowAddRecipientTooltip()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 670
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showAddRecipientTooltip()V

    goto :goto_e
.end method

.method public setMenuVisibleFlag(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 609
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsMenuVisible:Z

    .line 608
    return-void
.end method

.method public setShowEmptySubject(Z)V
    .locals 0
    .param p1, "showEmptySubject"    # Z

    .prologue
    .line 2257
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEmptySubject:Z

    .line 2256
    return-void
.end method

.method public updateComposerViews(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 2099
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2100
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateSubjectInputView()V

    .line 2103
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isComposingImMessage()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setJoynActive(Z)V

    .line 2104
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onComposerStateChanged()V

    .line 2105
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateTextInputView()V

    .line 2106
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMediaPreview(Z)V

    .line 2107
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    .line 2108
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPriorityView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2109
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updatePriorityIcon()V

    .line 2098
    :cond_1
    return-void
.end method
