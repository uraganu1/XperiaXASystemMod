.class public Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;
.implements Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;
.implements Lcom/sonyericsson/conversations/memory/LowMemoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ComposerCapabilityChangedListener;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FileMessageEventListener;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$7;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

.field private static synthetic -com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I

.field private static synthetic -com_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues:[I

.field private static synthetic -com_sonyericsson_conversations_ui_controller_ConversationActivityUiController$FragmentEnumSwitchesValues:[I

.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

.field private static synthetic -com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I

.field private static final DEBUG:Z


# instance fields
.field private mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

.field private mApiConnectionStatusListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;

.field private mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

.field private mBackDisabled:Z

.field private mBackKeyPressed:Z

.field private mComposer:Lcom/sonyericsson/conversations/ui/Composer;

.field private mComposerCapabilityListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ComposerCapabilityChangedListener;

.field private mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

.field private mConvListContentArea:Landroid/widget/FrameLayout;

.field private mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

.field private final mConversationListActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

.field private mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

.field private mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field mEditorFragmentCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

.field private mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

.field private mEstimateJoynMediaSizeTask:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;

.field private mEstimateListener:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;

.field private mFocusMessageUri:Landroid/net/Uri;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightPattern:Ljava/util/regex/Pattern;

.field private mImConversationEventListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;

.field private mImFileMessageEventListener:Lcom/sonymobile/jms/message/ImFileMessageEventListener;

.field private mImTextMessageEventListener:Lcom/sonymobile/jms/message/ImTextMessageEventListener;

.field private mImUndeliveredMessageEventListener:Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;

.field private mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

.field private mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

.field private mInvitationFragment:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

.field private mIsConvListVisibleInHistory:Z

.field private mIsInSearchMode:Z

.field private mIsResumed:Z

.field private mIsSending:Z

.field private mLastKnownDefaultSmsPackage:Ljava/lang/String;

.field private mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

.field private mLoadRecipientsListener:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;

.field private mLoadRecipientsTask:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

.field private mMediaResizeCompletionListener:Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

.field private mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

.field private mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

.field private mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field private mOpenConversationInsearchMode:Z

.field private mPd:Landroid/app/ProgressDialog;

.field private volatile mPreviousSendClickTimestamp:J

.field private mRecipientEditorPanelListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

.field private mSaveInstanceStateAlreadyCalled:Z

.field private mSendDelayedMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

.field private mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

.field private mStartConversationTaskListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

.field private mStopDraftSavingFlag:Z

.field private mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

.field private mXmsReceivedListener:Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;

.field private xtmListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/controller/ActionBarController;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    return v0
.end method

.method static synthetic -get11(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    return-object v0
.end method

.method static synthetic -get12(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    return-object v0
.end method

.method static synthetic -get13(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get14(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/messages/MessageSenderListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendDelayedMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    return-object v0
.end method

.method static synthetic -get15(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/messages/MessageSenderListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    return-object v0
.end method

.method static synthetic -get16(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/Composer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/EditorFragment;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/ui/persist/IntentData;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInvitationFragment:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

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

.method private static synthetic -getcom_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->values()[Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Critical:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Low:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Moderate:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->values()[Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->AUDIO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_ALL_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->CANNOT_ADD_CONTENT:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->DRM_PROTECTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->MESSAGE_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->TEXT_TOO_LONG:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_NOT_SUPPORTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_RESOLUTION_UNSUPPORTED:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->VIDEO_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_controller_ConversationActivityUiController$FragmentEnumSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_ui_controller_ConversationActivityUiController$FragmentEnumSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_ui_controller_ConversationActivityUiController$FragmentEnumSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->values()[Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ATTACHMENTBARFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->CONVERSATIONLISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->EDITORFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->MESSAGELISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->TOFIELDFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonyericsson_conversations_ui_controller_ConversationActivityUiController$FragmentEnumSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->values()[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_JOINED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_LEFT:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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

.method private static synthetic -getcom_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->values()[Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_ASK:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->NEVER_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;)Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEstimateJoynMediaSizeTask:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/persist/IntentData;)Lcom/sonyericsson/conversations/ui/persist/IntentData;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    return p1
.end method

.method static synthetic -set4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;)Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadRecipientsTask:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

    return-object p1
.end method

.method static synthetic -set5(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPreviousSendClickTimestamp:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/Activity;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isContentValidForSending()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->cleanupUiResizingMessage()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->clearStatusAfterSend()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0
    .param p1, "messageType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->convertToMessageType(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->expandRecipientsList()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;ZLandroid/net/Uri;Z)V
    .locals 0
    .param p1, "include"    # Z
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "saveSetting"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleGeotag(ZLandroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleImageResizeError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVideoResizeError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 0
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->initConversation(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->loadNextDraftIfComposerEmpty()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isMsgListContentAreaVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->muteGroupConversation()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0
    .param p1, "messageAdded"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->refreshEditorViews(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;ZLcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 0
    .param p1, "forceUpdate"    # Z
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->refreshMsgList(ZLcom/sonyericsson/conversations/conversation/Conversation;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->registerJoynListeners()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p3, "mediaUriList"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->resizeMediaAndCreateGroupConversationIfNeeded(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/messages/MessageSenderListener;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p3, "fileUriList"    # Ljava/util/List;
    .param p4, "senderListener"    # Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendJoynMessage(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/messages/MessageSenderListener;)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMuteNotificationBarVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDraftsPopup()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showEditorFragment()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isProcessingClickSendMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showExternalSendErrorToast(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;JJLjava/util/List;)V
    .locals 1
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p3, "originalSize"    # J
    .param p5, "resizedSize"    # J
    .param p7, "fileUriList"    # Ljava/util/List;

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showResizeDialog(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;JJLjava/util/List;)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->unmuteGroupConversation()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->unregisterJoynListeners()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0
    .param p1, "forceLoadDraft"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateComposerFromDraftStack(Z)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 0
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateComposerFromSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0
    .param p1, "subscriptionId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateConversationAndSendMessage(I)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateEditorFragmentComposerViews()V

    return-void
.end method

.method static synthetic -wrap39(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateRecipients(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getVisibleOne2OneConversationId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->addRecipientOnToField(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "selectedWallpaper"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->applyWallpaper(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/net/Uri;)V
    .locals 0
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->askWheterToIncludeGeotag(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 0
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkAndAcceptSessionOnConversationOpen(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0
    .param p1, "subscriptionId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkRecipientAndSend(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->DEBUG:Z

    .line 184
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .line 229
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .line 231
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    .line 233
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 235
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    .line 247
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    .line 253
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    .line 259
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSaveInstanceStateAlreadyCalled:Z

    .line 262
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    .line 268
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    .line 270
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 272
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    .line 274
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPreviousSendClickTimestamp:J

    .line 297
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadRecipientsTask:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

    .line 299
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    .line 301
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    .line 303
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mOpenConversationInsearchMode:Z

    .line 308
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsConvListVisibleInHistory:Z

    .line 311
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 310
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadRecipientsListener:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;

    .line 346
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragmentCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    .line 491
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mRecipientEditorPanelListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    .line 584
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    .line 624
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 623
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEstimateListener:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;

    .line 638
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 637
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMediaResizeCompletionListener:Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    .line 4338
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$7;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 4337
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStartConversationTaskListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

    .line 4388
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendDelayedMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    .line 4427
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    .line 4498
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->xtmListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;

    .line 683
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationListActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .line 684
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 685
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 686
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->register(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V

    .line 682
    return-void
.end method

.method private addRecipientOnToField(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1554
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1557
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->showSoftKeyboard()V

    .line 1559
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1553
    :goto_0
    return-void

    .line 1555
    :cond_0
    return-void

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "Could not add recipient. Contacts is not installed."

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private applyWallpaper(Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 6
    .param p1, "selectedWallpaper"    # Landroid/net/Uri;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 1191
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v2

    .line 1192
    .local v2, "wallpapers":Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1193
    .local v3, "context":Landroid/content/Context;
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;->start()V

    .line 1190
    return-void
.end method

.method private askWheterToIncludeGeotag(Landroid/net/Uri;)V
    .locals 5
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 2477
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2478
    .local v2, "saveSetting":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 2479
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    const v3, 0x7f0b022c

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(I)V

    .line 2480
    const v3, 0x7f0b022d

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setMessage(I)V

    .line 2481
    new-instance v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;

    invoke-direct {v3, p0, p1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$16;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/net/Uri;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const v4, 0x7f0b0165

    invoke-virtual {v0, v4, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2487
    new-instance v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$17;

    invoke-direct {v3, p0, p1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$17;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/net/Uri;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const v4, 0x7f0b0166

    invoke-virtual {v0, v4, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2494
    new-instance v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$18;

    invoke-direct {v3, p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$18;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 2493
    const v4, 0x7f0b022f

    invoke-virtual {v0, v4, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setCheckBox(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2500
    const v3, 0x7f0b022e

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setChangeLater(I)V

    .line 2501
    new-instance v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$19;

    invoke-direct {v3, p0, p1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$19;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/net/Uri;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2507
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2508
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const-string/jumbo v3, "alert-dialog"

    invoke-virtual {v1, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2509
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2476
    return-void
.end method

.method private backToConversationList()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4565
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 4567
    .local v0, "composer":Lcom/sonyericsson/conversations/ui/Composer;
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListUpdateNecessity(Z)V

    .line 4568
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showConvListContentArea()V

    .line 4569
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateOptionMenu()V

    .line 4570
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setConvListFragmentVisibility(Z)V

    .line 4572
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 4574
    .local v1, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->setActiveConversationVisibility(Z)V

    .line 4576
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    if-eqz v2, :cond_6

    .line 4580
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v2, :cond_1

    .line 4581
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    .line 4584
    :cond_1
    :goto_0
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 4586
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    .line 4590
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isInSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v2, :cond_2

    .line 4591
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getSearchString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->expandSearchView(Ljava/lang/String;)V

    .line 4593
    :cond_2
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethodandClearTextFocus(Z)V

    .line 4595
    if-eqz v0, :cond_3

    .line 4597
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->removeDraft()V

    .line 4602
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4603
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hidePileView()V

    .line 4606
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    if-eqz v2, :cond_5

    .line 4607
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setAttachmentBarFragmentVisibility(Z)V

    .line 4561
    :cond_5
    return-void

    .line 4577
    :cond_6
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft(Lcom/sonyericsson/conversations/ui/Composer;)V

    goto :goto_0
.end method

.method private cancelAllTasks()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1851
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->cancel(Z)Z

    .line 1853
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    .line 1856
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    if-eqz v0, :cond_1

    .line 1857
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->cancel(Z)Z

    .line 1858
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    .line 1861
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadRecipientsTask:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

    if-eqz v0, :cond_2

    .line 1862
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadRecipientsTask:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->cancel(Z)Z

    .line 1863
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadRecipientsTask:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

    .line 1866
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->cancelEstimateTask()V

    .line 1850
    return-void
.end method

.method private cancelEstimateTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1871
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEstimateJoynMediaSizeTask:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEstimateJoynMediaSizeTask:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->cancel(Z)Z

    .line 1873
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEstimateJoynMediaSizeTask:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;

    .line 1870
    :cond_0
    return-void
.end method

.method private static checkActivityLaunchAllowed(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2860
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2863
    sget-boolean v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2864
    const-string/jumbo v2, "MMS is disabled"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2867
    :cond_0
    const-string/jumbo v2, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2869
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2870
    .local v0, "intentUri":Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 2871
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 2872
    .local v1, "scheme":Ljava/lang/String;
    const-string/jumbo v2, "mmsto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2873
    const-string/jumbo v2, "mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 2872
    if-nez v2, :cond_1

    .line 2874
    const-string/jumbo v2, "mailto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 2872
    if-eqz v2, :cond_3

    .line 2876
    :cond_1
    sget-boolean v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 2877
    const-string/jumbo v2, "Activity launched with an mms scheme"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2879
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 2885
    .end local v0    # "intentUri":Landroid/net/Uri;
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private checkAndAcceptSessionOnConversationOpen(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 1136
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v2

    .line 1137
    .local v2, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    if-nez v2, :cond_0

    .line 1138
    const-string/jumbo v3, "imConversationApi not avaliable so unable to manually accept im-conversation on conversation open!"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 1140
    return-void

    .line 1143
    :cond_0
    :try_start_0
    sget-boolean v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1144
    const-string/jumbo v3, "Trying to accept chat invitation referenced by imConversation \'"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    .line 1146
    const-string/jumbo v4, "\'!"

    .line 1144
    invoke-virtual {v3, v4}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 1148
    :cond_1
    invoke-interface {v2, p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->onImConversationOpened(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :goto_0
    return-void

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v3, "Failed to accept chat invitation referenced by imConversation \'"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    .line 1154
    const-string/jumbo v4, "\'"

    .line 1152
    invoke-virtual {v3, v4}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1149
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_1
    move-exception v1

    .local v1, "e":Lcom/sonymobile/jms/conversation/SessionDoesNotHoldRcsSessionException;
    goto :goto_0
.end method

.method private checkRecipientAndSend(I)V
    .locals 11
    .param p1, "subscriptionId"    # I

    .prologue
    const v2, 0x1080027

    const v3, 0x1010355

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3095
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3096
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage(I)V

    .line 3094
    :goto_0
    return-void

    .line 3098
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkRecipientsStatus()I

    move-result v10

    .line 3099
    .local v10, "recipientStatus":I
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 3101
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateConversationAndSendMessage(I)V

    goto :goto_0

    .line 3107
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3108
    const v1, 0x7f0b018f

    .line 3107
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3110
    const v4, 0x7f0b0190

    .line 3111
    const v5, 0x104000a

    move-object v0, p0

    move-object v8, v6

    move-object v9, v6

    .line 3106
    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3112
    iput-boolean v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    goto :goto_0

    .line 3117
    :pswitch_2
    new-instance v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$26;

    invoke-direct {v6, p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$26;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V

    .line 3124
    .local v6, "positiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v8, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$27;

    invoke-direct {v8, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$27;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 3131
    .local v8, "negativeClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v9, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$28;

    invoke-direct {v9, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$28;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 3138
    .local v9, "cancelledListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0b018d

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3139
    const-string/jumbo v1, " "

    .line 3138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3140
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v1

    .line 3138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3142
    const v4, 0x7f0b018e

    .line 3143
    const v5, 0x7f0b0165

    const v7, 0x7f0b0166

    move-object v0, p0

    .line 3138
    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 3099
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkRecipientsStatus()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2166
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2167
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->hasValidRecipient()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2169
    const/4 v1, 0x2

    return v1

    .line 2174
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v0

    .line 2175
    .local v0, "invalidAddrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2177
    const/4 v1, 0x1

    return v1

    .line 2182
    .end local v0    # "invalidAddrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return v2
.end method

.method private cleanupUiResizingMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4373
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/Composer;->setMessagePriority(I)V

    .line 4375
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getDraftsManager()Lcom/sonyericsson/conversations/draft/DraftsApi;

    move-result-object v0

    .line 4376
    .local v0, "draftsApi":Lcom/sonyericsson/conversations/draft/DraftsApi;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getDraft()Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v1

    .line 4377
    .local v1, "loadedDraft":Lcom/sonyericsson/conversations/draft/Draft;
    if-eqz v1, :cond_0

    .line 4379
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/draft/Draft;->getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sonyericsson/conversations/draft/DraftsApi;->deleteDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 4381
    :cond_0
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateComposerFromDraftStack(Z)V

    .line 4383
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->refreshEditorViews(Z)V

    .line 4372
    return-void
.end method

.method private clearStatusAfterSend()V
    .locals 2

    .prologue
    .line 994
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 993
    return-void
.end method

.method private commitFragmentTransaction(Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 1646
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSaveInstanceStateAlreadyCalled:Z

    if-nez v0, :cond_0

    .line 1647
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1645
    :goto_0
    return-void

    .line 1649
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1650
    const-string/jumbo v0, "Commiting transaction with allow state loss!"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1652
    :cond_1
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private convertToMessageType(I)V
    .locals 2
    .param p1, "messageType"    # I

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v0, :cond_0

    .line 2840
    return-void

    .line 2842
    :cond_0
    if-nez p1, :cond_1

    .line 2843
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteAllMediaWithRefresh()V

    .line 2846
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->forceMessageType(I)V

    .line 2847
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->loadNextDraftIfComposerEmpty()V

    .line 2849
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$22;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$22;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2838
    return-void
.end method

.method private createConversationListFragment()Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .locals 2

    .prologue
    .line 1781
    const v0, 0x7f030039

    const v1, 0x7f0d00a0

    .line 1780
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->newInstance(II)Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    move-result-object v0

    return-object v0
.end method

.method private createXmsConversation(Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Lcom/sonyericsson/conversations/conversation/Conversation;"
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v4, 0x0

    .line 3154
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3155
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3156
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->isValidUriOrNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3157
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 3159
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 3157
    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetOrCreateThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonyericsson/conversations/model/Participant;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1

    .line 3162
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->createConversationFromParticipants(Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    return-object v1
.end method

.method private determineSendIntentDataType(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)I
    .locals 3
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 2230
    iget-object v0, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    .line 2231
    .local v0, "forwardUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 2232
    .local v1, "sendIntentType":I
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isUriInitedAndNotEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2233
    const/4 v1, 0x2

    .line 2235
    :cond_0
    return v1
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 3811
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3812
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3814
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3810
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dismissSaveContactDialog()V
    .locals 0

    .prologue
    .line 1348
    invoke-static {}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->dismissSaveToContactDialog()V

    .line 1347
    return-void
.end method

.method private expandRecipientsList()V
    .locals 2

    .prologue
    .line 3975
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    .line 3976
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-ne v0, v1, :cond_0

    .line 3977
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->expandSelf()V

    .line 3974
    :cond_0
    return-void
.end method

.method private finishUpToFieldFragment()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->finishUp()V

    .line 724
    :cond_0
    return-void
.end method

.method private gaPushEventForStickerPackageName(Lcom/android/mms/model/ImageModel;)V
    .locals 5
    .param p1, "stickerModel"    # Lcom/android/mms/model/ImageModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3497
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 3498
    .local v0, "imageModelUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 3499
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getStickerManager()Lcom/sonyericsson/conversations/ui/stickers/StickerManager;

    move-result-object v2

    .line 3500
    .local v2, "stickerMgr":Lcom/sonyericsson/conversations/ui/stickers/StickerManager;
    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->retrievePackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 3501
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3502
    const-string/jumbo v3, "stickers"

    .line 3503
    const-string/jumbo v4, "pack_used"

    .line 3502
    invoke-static {v3, v4, v1}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    :cond_0
    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/stickers/StickerManager;->removePackageName(Landroid/net/Uri;)V

    .line 3496
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "stickerMgr":Lcom/sonyericsson/conversations/ui/stickers/StickerManager;
    :cond_1
    return-void
.end method

.method private gaPushEventJoynMessage(ZLcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .locals 5
    .param p1, "isGroup"    # Z
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3391
    .local p3, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-string/jumbo v1, "joyn"

    .line 3392
    .local v1, "category":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string/jumbo v0, "joyn_group"

    .line 3394
    .local v0, "action":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    .line 3395
    invoke-virtual {p2}, Lcom/sonyericsson/conversations/model/JoynMessage;->getSlideshowModel()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 3396
    .local v2, "slideShow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v2, :cond_0

    .line 3397
    const-string/jumbo v3, "joyn"

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareLabelAndPushGA(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    .end local v2    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    :goto_1
    return-void

    .line 3392
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "joyn_one2one"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0

    .line 3399
    :cond_2
    if-eqz p3, :cond_0

    .line 3400
    const-string/jumbo v3, "joyn"

    invoke-direct {p0, p3, v3, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareLabelAndPushGA(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private gaPushEventMmsMessage(Lcom/sonyericsson/conversations/model/MmsMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    .line 3364
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3365
    const-string/jumbo v1, "joyn"

    .line 3366
    .local v1, "category":Ljava/lang/String;
    const-string/jumbo v0, "sms_mms"

    .line 3373
    .local v0, "action":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 3374
    .local v3, "slideShow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v3, :cond_0

    .line 3375
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v1, v0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareLabelAndPushGA(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3361
    .end local v3    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    :goto_1
    return-void

    .line 3368
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "category":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "message_list"

    .line 3369
    .restart local v1    # "category":Ljava/lang/String;
    const-string/jumbo v0, "mms_sent"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0

    .line 3377
    :catch_0
    move-exception v2

    .local v2, "e":Lcom/google/android/mms/MmsException;
    goto :goto_1
.end method

.method private gaPushEventTextShare(Landroid/content/Intent;)V
    .locals 3
    .param p1, "shareIntent"    # Landroid/content/Intent;

    .prologue
    .line 3410
    const-string/jumbo v1, "person_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3411
    const-string/jumbo v0, "direct_share"

    .line 3412
    .local v0, "action":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "share"

    const-string/jumbo v2, "text"

    invoke-static {v1, v0, v2}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    return-void

    .line 3411
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "regular_share"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0
.end method

.method private generateLabelForGaPushEvent(IIIIIIIIIII)Ljava/lang/String;
    .locals 4
    .param p1, "attachmentCount"    # I
    .param p2, "audioCount"    # I
    .param p3, "videoCount"    # I
    .param p4, "imageCount"    # I
    .param p5, "calendarEventCount"    # I
    .param p6, "contactVCardCount"    # I
    .param p7, "locationImageCount"    # I
    .param p8, "locationVCardCount"    # I
    .param p9, "textCount"    # I
    .param p10, "stickerCount"    # I
    .param p11, "subjectCount"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 3513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3514
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-lez p10, :cond_0

    .line 3515
    const-string/jumbo v1, ", sticker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3517
    :cond_0
    if-lez p1, :cond_1

    .line 3518
    const-string/jumbo v1, ", attachment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3520
    :cond_1
    if-lez p2, :cond_2

    .line 3521
    const-string/jumbo v1, ", audio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3523
    :cond_2
    if-lez p5, :cond_3

    .line 3524
    const-string/jumbo v1, ", calendar event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3526
    :cond_3
    if-lez p6, :cond_4

    .line 3527
    const-string/jumbo v1, ", contact VCard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3529
    :cond_4
    if-lez p4, :cond_5

    .line 3530
    const-string/jumbo v1, ", image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3532
    :cond_5
    if-lez p7, :cond_6

    .line 3533
    const-string/jumbo v1, ", location image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3535
    :cond_6
    if-lez p8, :cond_7

    .line 3536
    const-string/jumbo v1, ", location VCard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3538
    :cond_7
    if-lez p9, :cond_8

    .line 3539
    const-string/jumbo v1, ", text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3541
    :cond_8
    if-lez p11, :cond_9

    .line 3542
    const-string/jumbo v1, ", subject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3544
    :cond_9
    if-lez p3, :cond_a

    .line 3545
    const-string/jumbo v1, ", video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3547
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, v3, :cond_b

    .line 3548
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3550
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationListActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    return-object v0
.end method

.method private getGroupChatSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3598
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 3599
    .local v0, "subject":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3600
    const-string/jumbo v0, ""

    .line 3602
    :cond_0
    return-object v0
.end method

.method private getInvalidRecipients()Ljava/util/ArrayList;
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
    const/4 v1, 0x0

    .line 2198
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 2201
    :cond_0
    return-object v1
.end method

.method private getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3967
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 3968
    const-string/jumbo v0, ""

    return-object v0

    .line 3970
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getSearchString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVisibleOne2OneConversationId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1168
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 1169
    .local v1, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->isConversationVisibile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1170
    return-object v4

    .line 1172
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->getLastOpenedConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 1173
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v2

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1177
    return-object v4

    .line 1175
    :pswitch_0
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    return-object v2

    .line 1173
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private handleContentRestrictionException()V
    .locals 3

    .prologue
    .line 2423
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2424
    const v1, 0x7f0b00bc

    .line 2425
    const/4 v2, 0x1

    .line 2423
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 2422
    return-void
.end method

.method private handleGeotag(ZLandroid/net/Uri;Z)V
    .locals 12
    .param p1, "include"    # Z
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "saveSetting"    # Z

    .prologue
    .line 2448
    if-eqz p3, :cond_0

    .line 2450
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2449
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 2451
    .local v9, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 2452
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    .line 2453
    const-string/jumbo v0, "pref_key_geotag"

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2457
    :goto_0
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2460
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;ZZZZ)V

    .line 2461
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateEditorFragmentComposerViews()V

    .line 2446
    :goto_1
    return-void

    .line 2455
    .restart local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v9    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    const-string/jumbo v0, "pref_key_geotag"

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2462
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "pref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v10

    .line 2463
    .local v10, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    const-string/jumbo v0, "Could not resize image enough to fit the message"

    invoke-static {v0, v10}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2464
    invoke-direct {p0, v10}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleResizeException(Lcom/sonyericsson/conversations/util/ResizeException;)V

    goto :goto_1

    .line 2469
    .end local v10    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    :catch_1
    move-exception v7

    .line 2470
    .local v7, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleContentRestrictionException()V

    .line 2471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Could not add geo tagged image :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2467
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    .line 2468
    .local v11, "se":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSecurityException()V

    goto :goto_1

    .line 2465
    .end local v11    # "se":Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 2466
    .local v6, "e":Lcom/google/android/mms/MmsException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleMmsException()V

    goto :goto_1
.end method

.method private handleImageResizeError(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2441
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 2442
    const/4 v3, 0x0

    aput-object p1, v2, v3

    const v3, 0x7f0b0224

    .line 2441
    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 2440
    return-void
.end method

.method private handleIntent(Landroid/os/Bundle;)Z
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1373
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1377
    .local v6, "intent":Landroid/content/Intent;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkActivityLaunchAllowed(Landroid/content/Intent;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1378
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    .line 1379
    const v14, 0x7f0b014e

    const/4 v15, 0x0

    .line 1378
    invoke-static {v13, v14, v15}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 1380
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 1381
    const/4 v13, 0x0

    return v13

    .line 1389
    :cond_0
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->isNotificationIntent(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1390
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getUnReadMessagesThreadsFromNotificationIntent(Landroid/content/Intent;)I

    move-result v12

    .line 1392
    .local v12, "unReadMessageThreads":I
    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 1393
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1394
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 1395
    sget-object v13, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->UNREAD_MESSAGE_URI:Ljava/lang/String;

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1396
    .local v9, "sUri":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1397
    sget-object v13, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->UNREAD_MESSAGE_URI:Ljava/lang/String;

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1398
    .local v10, "stringUri":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1403
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v9    # "sUri":Ljava/lang/String;
    .end local v10    # "stringUri":Ljava/lang/String;
    .end local v12    # "unReadMessageThreads":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->parse(Landroid/content/Context;Landroid/content/Intent;)Lcom/sonyericsson/conversations/ui/persist/IntentData;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    .line 1405
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1406
    .restart local v4    # "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 1408
    sget-object v13, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->ACTION_NOTIFICATION_CLEAR_TYPE_EXTRA:Ljava/lang/String;

    const/4 v14, -0x1

    .line 1407
    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1409
    .local v11, "typeInt":I
    const/4 v13, -0x1

    if-le v11, v13, :cond_2

    .line 1410
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v13

    invoke-interface {v13}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v13

    .line 1411
    invoke-static {}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->values()[Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    move-result-object v14

    aget-object v14, v14, v11

    .line 1410
    invoke-interface {v13, v14}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeAllNotificationsOfType(Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;)V

    .line 1412
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Bundle;->clear()V

    .line 1413
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1417
    .end local v11    # "typeInt":I
    :cond_2
    const/4 v2, 0x0

    .line 1418
    .local v2, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-eqz p1, :cond_a

    .line 1420
    const-string/jumbo v13, "conversation_id"

    .line 1419
    invoke-virtual {v6, v13}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 1421
    .local v3, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    if-nez v3, :cond_8

    .line 1423
    const-string/jumbo v13, "conversation_id"

    .line 1422
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .end local v3    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    check-cast v3, Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 1430
    .restart local v3    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :goto_0
    if-eqz v3, :cond_9

    .line 1431
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-virtual {v13, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    .line 1440
    .end local v2    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v3    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :goto_1
    if-nez v2, :cond_5

    .line 1441
    const-string/jumbo v13, "android.intent.action.VIEW"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1443
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v13, v13, Lcom/sonyericsson/conversations/ui/persist/IntentData;->sendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    if-eqz v13, :cond_3

    .line 1444
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v13, v13, Lcom/sonyericsson/conversations/ui/persist/IntentData;->sendIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    iget-object v13, v13, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 1443
    if-eqz v13, :cond_4

    .line 1445
    :cond_3
    const-string/jumbo v13, "android.intent.action.MAIN"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 1449
    const-wide/16 v14, -0x1

    .line 1450
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    invoke-virtual/range {v13 .. v16}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(JLjava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    .line 1453
    :cond_5
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v8

    .line 1455
    .local v8, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_6

    .line 1456
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeSelfContactFromGroup(Ljava/util/List;)V

    .line 1458
    :cond_6
    new-instance v13, Lcom/sonyericsson/conversations/ui/Composer;

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    invoke-direct {v13, v14, v2, v15}, Lcom/sonyericsson/conversations/ui/Composer;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 1459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v13, v13, Lcom/sonyericsson/conversations/ui/persist/IntentData;->focusMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 1460
    const-string/jumbo v13, "highlight"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1461
    .local v5, "highlight":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 1462
    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 1464
    :cond_7
    const/4 v13, 0x1

    return v13

    .line 1426
    .end local v5    # "highlight":Ljava/lang/String;
    .end local v8    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    .restart local v2    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .restart local v3    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_8
    const/4 v7, 0x0

    .line 1427
    .local v7, "nullConversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    const-string/jumbo v13, "conversation_id"

    invoke-virtual {v6, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1428
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1434
    .end local v7    # "nullConversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_9
    const-string/jumbo v13, "conversationId is null."

    invoke-static {v13}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1437
    .end local v3    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v2, v13, Lcom/sonyericsson/conversations/ui/persist/IntentData;->conversation:Lcom/sonyericsson/conversations/conversation/Conversation;

    .local v2, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    goto/16 :goto_1
.end method

.method private handleMmsException()V
    .locals 3

    .prologue
    .line 2417
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2418
    const v1, 0x7f0b013d

    .line 2419
    const/4 v2, 0x1

    .line 2417
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 2416
    return-void
.end method

.method private handleNewIntent(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 1477
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 1478
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1480
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1481
    const-string/jumbo v5, "text/plain"

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 1480
    if-eqz v5, :cond_0

    .line 1482
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->gaPushEventTextShare(Landroid/content/Intent;)V

    .line 1484
    :cond_0
    if-nez p1, :cond_3

    .line 1485
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->shouldShowConversationListPane(Landroid/content/Intent;)Z

    move-result v2

    .line 1487
    .local v2, "isShowList":Z
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->isNotificationIntent(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1488
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isNotificationValid()Z

    move-result v3

    .line 1489
    .local v3, "isValidNotification":Z
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getUnReadMessagesThreadsFromNotificationIntent(Landroid/content/Intent;)I

    move-result v4

    .line 1491
    .local v4, "unReadMessageThreads":I
    if-ne v4, v7, :cond_2

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 1494
    .local v2, "isShowList":Z
    :goto_0
    iput-boolean v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsConvListVisibleInHistory:Z

    .line 1502
    .end local v2    # "isShowList":Z
    .end local v3    # "isValidNotification":Z
    .end local v4    # "unReadMessageThreads":I
    :cond_1
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->initActionBarController(Ljava/lang/Boolean;)V

    .line 1503
    if-eqz v2, :cond_4

    .line 1505
    iput-boolean v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsConvListVisibleInHistory:Z

    .line 1506
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showConvListContentArea()V

    .line 1507
    invoke-direct {p0, v7}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setConvListFragmentVisibility(Z)V

    .line 1508
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showConversationListOverlay()V

    .line 1509
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateOptionMenu()V

    .line 1476
    :goto_2
    return-void

    .line 1491
    .local v2, "isShowList":Z
    .restart local v3    # "isValidNotification":Z
    .restart local v4    # "unReadMessageThreads":I
    :cond_2
    const/4 v2, 0x1

    .local v2, "isShowList":Z
    goto :goto_0

    .line 1497
    .end local v2    # "isShowList":Z
    .end local v3    # "isValidNotification":Z
    .end local v4    # "unReadMessageThreads":I
    :cond_3
    const-string/jumbo v5, "ConvListVisible"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1499
    .local v2, "isShowList":Z
    const-string/jumbo v5, "IsConvListInHistory"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1498
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsConvListVisibleInHistory:Z

    goto :goto_1

    .line 1512
    .end local v2    # "isShowList":Z
    :cond_4
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onConversationOpen(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    goto :goto_2
.end method

.method private handleResizeException(Lcom/sonyericsson/conversations/util/ResizeException;)V
    .locals 4
    .param p1, "re"    # Lcom/sonyericsson/conversations/util/ResizeException;

    .prologue
    .line 2403
    const v1, 0x7f0b013d

    .line 2404
    .local v1, "errorText":I
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/ResizeException;->getResizeError()I

    move-result v0

    .line 2406
    .local v0, "errorCode":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2409
    const v1, 0x7f0b013e

    .line 2413
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 2402
    return-void
.end method

.method private handleSecurityException()V
    .locals 3

    .prologue
    .line 2429
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2430
    const v1, 0x7f0b00bf

    .line 2431
    const/4 v2, 0x1

    .line 2429
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 2428
    return-void
.end method

.method private handleSendIntentContentUri(Landroid/net/Uri;)V
    .locals 19
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v2, :cond_0

    .line 2515
    return-void

    .line 2519
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v17

    .line 2520
    .local v17, "type":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2522
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2521
    invoke-static {v2}, Lcom/android/mms/MmsConfig;->shallWeAskWhetherGeotagShallBeIncluded(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2523
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/util/MediaUtil;->hasLocationInformation(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v2

    .line 2521
    if-eqz v2, :cond_1

    .line 2524
    move-object/from16 v18, p1

    .line 2525
    .local v18, "uri":Landroid/net/Uri;
    new-instance v8, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$20;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$20;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/net/Uri;)V

    .line 2531
    .local v8, "action":Ljava/lang/Runnable;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2513
    .end local v8    # "action":Ljava/lang/Runnable;
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 2534
    .restart local v17    # "type":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 2535
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 2534
    invoke-static {v3}, Lcom/android/mms/MmsConfig;->shallGeotagBeIncluded(Landroid/content/Context;)Z

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2535
    const/4 v7, 0x0

    move-object/from16 v3, p1

    .line 2534
    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;ZZZZ)V
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 2554
    .end local v17    # "type":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 2555
    .local v15, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    const-string/jumbo v2, "Could not resize image enough to fit the message"

    invoke-static {v2, v15}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2557
    const v13, 0x7f0b013d

    .line 2558
    .local v13, "errorText":I
    invoke-virtual {v15}, Lcom/sonyericsson/conversations/util/ResizeException;->getResizeError()I

    move-result v12

    .line 2560
    .local v12, "errorCode":I
    const/4 v2, 0x2

    if-ne v12, v2, :cond_2

    .line 2563
    const v13, 0x7f0b013e

    .line 2566
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v13, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 2537
    .end local v12    # "errorCode":I
    .end local v13    # "errorText":I
    .end local v15    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    .restart local v17    # "type":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addVideo(Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 2567
    .end local v17    # "type":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 2568
    .local v14, "ie":Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleMmsException()V

    goto :goto_0

    .line 2539
    .end local v14    # "ie":Ljava/io/IOException;
    .restart local v17    # "type":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2540
    const-string/jumbo v2, "application/ogg"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 2539
    if-eqz v2, :cond_6

    .line 2541
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addAudio(Landroid/net/Uri;)V
    :try_end_2
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 2569
    .end local v17    # "type":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 2570
    .local v10, "e":Lcom/google/android/mms/MmsException;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleMmsException()V

    goto :goto_0

    .line 2542
    .end local v10    # "e":Lcom/google/android/mms/MmsException;
    .restart local v17    # "type":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string/jumbo v2, "text/x-vCard"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2543
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVcardType(Landroid/net/Uri;Z)V
    :try_end_3
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 2571
    .end local v17    # "type":Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 2572
    .local v9, "e":Lcom/android/mms/ContentRestrictionException;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleContentRestrictionException()V

    goto/16 :goto_0

    .line 2545
    .end local v9    # "e":Lcom/android/mms/ContentRestrictionException;
    .restart local v17    # "type":Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string/jumbo v2, "text/x-vCalendar"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2546
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVcalType(Landroid/net/Uri;Z)V
    :try_end_4
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    .line 2573
    .end local v17    # "type":Ljava/lang/String;
    :catch_4
    move-exception v16

    .line 2574
    .local v16, "se":Ljava/lang/SecurityException;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSecurityException()V

    goto/16 :goto_0

    .line 2548
    .end local v16    # "se":Ljava/lang/SecurityException;
    .restart local v17    # "type":Ljava/lang/String;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;)V
    :try_end_5
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 2575
    .end local v17    # "type":Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 2576
    .local v11, "e":Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;->getContentStatus()Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showExternalSendErrorToast(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    goto/16 :goto_0
.end method

.method private handleSendIntentMessageUri(Landroid/net/Uri;)V
    .locals 6
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 2353
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v3, :cond_0

    .line 2354
    return-void

    .line 2359
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sonyericsson/conversations/model/MessageUtil;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 2360
    .local v2, "msg":Lcom/sonyericsson/conversations/model/Message;
    instance-of v3, v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_3

    move-object v3, v2

    .line 2361
    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendIntentMmsUri(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    .line 2379
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2380
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/Composer;->setMessagePriority(I)V

    .line 2352
    :cond_2
    return-void

    .line 2362
    :cond_3
    instance-of v3, v2, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v3, :cond_4

    .line 2363
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    move-object v3, v2

    check-cast v3, Lcom/sonyericsson/conversations/model/SmsMessage;

    iget-object v3, v3, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2364
    :cond_4
    instance-of v3, v2, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 2365
    check-cast v1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 2366
    .local v1, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    .line 2367
    .local v0, "imMsgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected joyn msg type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    goto :goto_0

    .line 2369
    :pswitch_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/JoynMessage;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2372
    :pswitch_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/conversations/ui/Composer;->loadSlideShowModelFromJoynMessageUri(Lcom/sonyericsson/conversations/model/JoynMessage;)V

    goto :goto_0

    .line 2367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSendIntentMmsUri(Lcom/sonyericsson/conversations/model/MmsMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    .line 2346
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/conversations/ui/Composer;->loadSlideShowModelFromMmsMessageUri(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2344
    :goto_0
    return-void

    .line 2347
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/google/android/mms/MmsException;
    goto :goto_0
.end method

.method private handleSendMultipleIntentContentUris(Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2581
    .local p1, "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v0, :cond_0

    .line 2582
    return-void

    .line 2585
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 2586
    .local v7, "contentIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/net/Uri;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2587
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 2590
    .local v1, "contentUri":Landroid/net/Uri;
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 2592
    .local v13, "type":Ljava/lang/String;
    sget-boolean v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SEND_MUTLIPLE intent, mime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\', uri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2594
    const-string/jumbo v2, "\'"

    .line 2593
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2597
    :cond_1
    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2599
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2598
    invoke-static {v0}, Lcom/android/mms/MmsConfig;->shallWeAskWhetherGeotagShallBeIncluded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2600
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->hasLocationInformation(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v0

    .line 2598
    if-eqz v0, :cond_2

    .line 2601
    move-object v14, v1

    .line 2602
    .local v14, "uri":Landroid/net/Uri;
    new-instance v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$21;

    invoke-direct {v6, p0, v14}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$21;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/net/Uri;)V

    .line 2608
    .local v6, "action":Ljava/lang/Runnable;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 2624
    .end local v6    # "action":Ljava/lang/Runnable;
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 2625
    .local v11, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    const-string/jumbo v0, "Could not resize image enough to fit the message"

    invoke-static {v0, v11}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2626
    invoke-direct {p0, v11}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleResizeException(Lcom/sonyericsson/conversations/util/ResizeException;)V

    goto :goto_0

    .line 2610
    .end local v11    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    .restart local v13    # "type":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 2611
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->shallGeotagBeIncluded(Landroid/content/Context;)Z

    move-result v4

    .line 2610
    const/4 v3, 0x0

    .line 2612
    const/4 v5, 0x0

    .line 2610
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;ZZZZ)V
    :try_end_1
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 2627
    .end local v13    # "type":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 2628
    .local v10, "ie":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleMmsException()V

    goto/16 :goto_0

    .line 2610
    .end local v10    # "ie":Ljava/io/IOException;
    .restart local v13    # "type":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 2614
    :cond_4
    :try_start_2
    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2615
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addVideo(Landroid/net/Uri;Z)V
    :try_end_2
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 2629
    .end local v13    # "type":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 2630
    .local v8, "e":Lcom/google/android/mms/MmsException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleMmsException()V

    goto/16 :goto_0

    .line 2615
    .end local v8    # "e":Lcom/google/android/mms/MmsException;
    .restart local v13    # "type":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 2616
    :cond_6
    :try_start_3
    invoke-static {v13}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2617
    const-string/jumbo v0, "application/ogg"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2616
    if-eqz v0, :cond_9

    .line 2618
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/conversations/ui/Composer;->addAudio(Landroid/net/Uri;Z)V
    :try_end_3
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 2631
    .end local v13    # "type":Ljava/lang/String;
    :catch_3
    move-exception v12

    .line 2632
    .local v12, "se":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSecurityException()V

    goto/16 :goto_0

    .line 2618
    .end local v12    # "se":Ljava/lang/SecurityException;
    .restart local v13    # "type":Ljava/lang/String;
    :cond_8
    const/4 v0, 0x1

    goto :goto_3

    .line 2619
    :cond_9
    :try_start_4
    const-string/jumbo v0, "text/x-vCard"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2620
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVcardType(Landroid/net/Uri;Z)V
    :try_end_4
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 2633
    .end local v13    # "type":Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 2634
    .local v9, "e":Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;->getContentStatus()Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showExternalSendErrorToast(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    goto/16 :goto_0

    .line 2620
    .end local v9    # "e":Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
    .restart local v13    # "type":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x1

    goto :goto_4

    .line 2622
    :cond_b
    :try_start_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;)V
    :try_end_5
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 2580
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v13    # "type":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private handleVcalType(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 2395
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/util/VCalendarUtil;->createVCalendarFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 2396
    .local v0, "vCalUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 2398
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1, v0, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;Z)V

    .line 2394
    :cond_0
    return-void
.end method

.method private handleVcardType(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 2386
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->createVCardFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    .line 2387
    .local v0, "vCardUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 2389
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1, v0, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;Z)V

    .line 2385
    :cond_0
    return-void
.end method

.method private handleVideoResizeError(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2435
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 2436
    const/4 v3, 0x0

    aput-object p1, v2, v3

    const v3, 0x7f0b0223

    .line 2435
    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 2434
    return-void
.end method

.method private hasDefaultSmsPackageChanged(Ljava/lang/String;)Z
    .locals 2
    .param p1, "currentDefaultSmsPackage"    # Ljava/lang/String;

    .prologue
    .line 920
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLastKnownDefaultSmsPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 921
    .local v0, "currentEqualsLastKnown":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private hideInputMethod(Z)V
    .locals 4
    .param p1, "checkFullScreen"    # Z

    .prologue
    .line 3780
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 3781
    const-string/jumbo v3, "input_method"

    .line 3780
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3783
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3779
    :cond_0
    :goto_0
    return-void

    .line 3784
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 3785
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 3786
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 3787
    const/4 v3, 0x2

    .line 3786
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private hideInputMethodandClearTextFocus(Z)V
    .locals 2
    .param p1, "checkFullScreen"    # Z

    .prologue
    .line 3793
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 3794
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 3795
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3796
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 3792
    :cond_0
    return-void
.end method

.method private initActionBarController(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isShowList"    # Ljava/lang/Boolean;

    .prologue
    .line 4549
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4550
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    if-nez v0, :cond_0

    .line 4551
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    .line 4552
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 4551
    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    .line 4548
    :cond_0
    :goto_0
    return-void

    .line 4555
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-nez v0, :cond_0

    .line 4556
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    goto :goto_0
.end method

.method private initConversation(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 4
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    const/4 v3, 0x0

    .line 1878
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->cancel(Z)Z

    .line 1882
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTextMessagingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1883
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Context;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    .line 1885
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1886
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1885
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1887
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1890
    return-void

    .line 1888
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/MessageUtil;->hasDraftWithAttachments(Lcom/sonyericsson/conversations/conversation/ConversationId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1893
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1894
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1895
    new-instance v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 1893
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;Z)V

    .line 1877
    :cond_3
    return-void
.end method

.method private isContentValidForSending()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3068
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_0

    .line 3069
    return v3

    .line 3071
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3072
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3073
    const v2, 0x7f0b0043

    .line 3072
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 3075
    return v3

    .line 3078
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isCurrentTextTooLong()Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v0

    .line 3079
    .local v0, "textContentStatus":Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-getcom_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3088
    const-string/jumbo v1, "Unexpected text restriction, refusing to send."

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 3089
    return v3

    .line 3083
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3084
    const v2, 0x7f0b0135

    .line 3083
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 3086
    return v3

    .line 3091
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 3079
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isInSearchMode()Z
    .locals 1

    .prologue
    .line 3963
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsInSearchMode:Z

    return v0
.end method

.method private isMsgListContentAreaVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2194
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNotificationValid()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1517
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 1518
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-nez v0, :cond_0

    .line 1519
    return v2

    .line 1521
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    .line 1522
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isProcessingClickSendMessage()Z
    .locals 4

    .prologue
    .line 694
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPreviousSendClickTimestamp:J

    sub-long/2addr v0, v2

    .line 695
    const-wide/16 v2, 0x3e8

    .line 694
    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUriInitedAndNotEmpty(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 2220
    if-eqz p1, :cond_0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadNextDraftIfComposerEmpty()V
    .locals 2

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_1

    .line 2826
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    .line 2827
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    .line 2826
    if-eq v0, v1, :cond_1

    .line 2828
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getComposerContentType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2829
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    if-eqz v0, :cond_0

    .line 2830
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->cancel(Z)Z

    .line 2833
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    .line 2834
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2824
    :cond_1
    return-void
.end method

.method private messageSubjectPrefixForType(I)Ljava/lang/String;
    .locals 3
    .param p1, "sendIntentType"    # I

    .prologue
    .line 2278
    const/4 v0, 0x0

    .line 2279
    .local v0, "prefix":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2292
    .end local v0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2281
    .restart local v0    # "prefix":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2282
    const v2, 0x7f0b00e8

    .line 2281
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "prefix":Ljava/lang/String;
    goto :goto_0

    .line 2285
    .local v0, "prefix":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2286
    const v2, 0x7f0b00e9

    .line 2285
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "prefix":Ljava/lang/String;
    goto :goto_0

    .line 2279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private muteGroupConversation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4001
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 4002
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->setConversationIsMuted(Lcom/sonyericsson/conversations/conversation/ConversationId;Z)V

    .line 4003
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMuteNotificationBarVisibility(Z)V

    .line 4000
    return-void
.end method

.method private prepareLabelAndPushGA(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "slideShow"    # Lcom/android/mms/model/SlideshowModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "subject"    # Ljava/lang/String;

    .prologue
    .line 3442
    const/4 v3, 0x0

    .line 3443
    .local v3, "attachmentCount":I
    const/4 v4, 0x0

    .line 3444
    .local v4, "audioCount":I
    const/4 v7, 0x0

    .line 3445
    .local v7, "calendarEventCount":I
    const/4 v8, 0x0

    .line 3446
    .local v8, "contactVCardCount":I
    const/4 v6, 0x0

    .line 3447
    .local v6, "imageCount":I
    const/4 v12, 0x0

    .line 3448
    .local v12, "stickerCount":I
    const/4 v9, 0x0

    .line 3449
    .local v9, "locationImageCount":I
    const/4 v10, 0x0

    .line 3450
    .local v10, "locationVCardCount":I
    const/4 v11, 0x0

    .line 3451
    .local v11, "textCount":I
    const/4 v13, 0x0

    .line 3452
    .local v13, "subjectCount":I
    const/4 v5, 0x0

    .line 3454
    .local v5, "videoCount":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/model/SlideModel;

    .line 3455
    .local v15, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3456
    add-int/lit8 v3, v3, 0x1

    .line 3458
    :cond_1
    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3459
    add-int/lit8 v4, v4, 0x1

    .line 3461
    :cond_2
    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->hasCalendarEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3462
    add-int/lit8 v7, v7, 0x1

    .line 3464
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/android/mms/model/SlideModel;->hasContactVCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3465
    add-int/lit8 v8, v8, 0x1

    .line 3467
    :cond_4
    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->getSticker()Lcom/android/mms/model/ImageModel;

    move-result-object v17

    .line 3468
    .local v17, "sticker":Lcom/android/mms/model/ImageModel;
    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3469
    add-int/lit8 v5, v5, 0x1

    .line 3480
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/android/mms/model/SlideModel;->hasLocationVCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3481
    add-int/lit8 v10, v10, 0x1

    .line 3483
    :cond_6
    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3484
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3470
    :cond_7
    if-eqz v17, :cond_8

    .line 3471
    add-int/lit8 v12, v12, 0x1

    .line 3474
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->gaPushEventForStickerPackageName(Lcom/android/mms/model/ImageModel;)V

    goto :goto_1

    .line 3475
    :cond_8
    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->hasImageExcludingLocationImage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3476
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3477
    :cond_9
    invoke-virtual {v15}, Lcom/android/mms/model/SlideModel;->hasLocationImage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3478
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3487
    .end local v15    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v17    # "sticker":Lcom/android/mms/model/ImageModel;
    :cond_a
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 3488
    const/4 v13, 0x1

    :cond_b
    move-object/from16 v2, p0

    .line 3490
    invoke-direct/range {v2 .. v13}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->generateLabelForGaPushEvent(IIIIIIIIIII)Ljava/lang/String;

    move-result-object v14

    .line 3493
    .local v14, "label":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v1, v14}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    return-void
.end method

.method private prepareLabelAndPushGA(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3417
    .local p1, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v3, 0x0

    .line 3418
    .local v3, "attachmentCount":I
    const/4 v4, 0x0

    .line 3419
    .local v4, "audioCount":I
    const/4 v6, 0x0

    .line 3420
    .local v6, "imageCount":I
    const/4 v5, 0x0

    .line 3422
    .local v5, "videoCount":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/Uri;

    .line 3423
    .local v16, "uri":Landroid/net/Uri;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 3425
    .local v15, "mimeType":Ljava/lang/String;
    invoke-static {v15}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3426
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3427
    :cond_0
    invoke-static {v15}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3428
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3429
    :cond_1
    invoke-static {v15}, Lcom/sonymobile/conversations/util/MimeTypeUtil;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3430
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3432
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3436
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    .line 3435
    invoke-direct/range {v2 .. v13}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->generateLabelForGaPushEvent(IIIIIIIIIII)Ljava/lang/String;

    move-result-object v14

    .line 3437
    .local v14, "label":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v1, v14}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3416
    return-void
.end method

.method private refreshEditorViews(Z)V
    .locals 4
    .param p1, "messageAdded"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3691
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 3692
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 3693
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setAllowDeleteObsoleteThreads(Z)V

    .line 3694
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    .line 3697
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    if-eqz v1, :cond_1

    .line 3700
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onConversationOpen(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 3703
    :cond_1
    if-eqz p1, :cond_2

    .line 3704
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateEditorFragment()V

    .line 3690
    :goto_0
    return-void

    .line 3709
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3710
    const v2, 0x7f0b00ef

    .line 3709
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3712
    .local v0, "toastInformation":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->isStorageLow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3713
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3714
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b004d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3718
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private refreshMsgList(ZLcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 1
    .param p1, "forceUpdate"    # Z
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 3685
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3686
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMsgListFragment(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 3684
    :cond_1
    return-void
.end method

.method private registerJoynListeners()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 802
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 803
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v3

    .line 804
    .local v3, "imUseCasePermissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposerCapabilityListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ComposerCapabilityChangedListener;

    if-nez v4, :cond_0

    .line 805
    new-instance v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ComposerCapabilityChangedListener;

    invoke-direct {v4, p0, v5}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ComposerCapabilityChangedListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ComposerCapabilityChangedListener;)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposerCapabilityListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ComposerCapabilityChangedListener;

    .line 807
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImUndeliveredMessageEventListener:Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;

    if-nez v4, :cond_1

    .line 808
    new-instance v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;

    invoke-direct {v4, p0, v5}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$UndeliveredMessageEventListener;)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImUndeliveredMessageEventListener:Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;

    .line 810
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImConversationEventListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;

    if-nez v4, :cond_2

    .line 811
    new-instance v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;

    invoke-direct {v4, p0, v5}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImConversationEventListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;

    .line 814
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposerCapabilityListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ComposerCapabilityChangedListener;

    .line 813
    invoke-interface {v3, v4}, Lcom/sonymobile/jms/permission/ImPermissionApi;->registerImContactPermissionChangeListener(Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;)V

    .line 815
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v4

    .line 816
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImUndeliveredMessageEventListener:Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;

    .line 815
    invoke-interface {v4, v5}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->registerMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 817
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v4

    .line 818
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImConversationEventListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;

    .line 817
    invoke-interface {v4, v5}, Lcom/sonymobile/jms/conversation/ImConversationApi;->registerImConversationEventListener(Lcom/sonymobile/jms/conversation/ImConversationEventListener;)V

    .line 819
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->registerSendingTechnologyChangeListeners()V

    .line 821
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 822
    .local v0, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 823
    .local v1, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    .line 824
    .local v2, "conversationType":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isMsgListContentAreaVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 825
    sget-object v4, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v2, v4, :cond_3

    .line 826
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->tryToRefreshJoynCapabilities(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    .line 827
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->updateCapabilities()V

    .line 828
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/Composer;->updateMessageType(Z)V

    .line 829
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateEditorFragment()V

    .line 832
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isMsgListContentAreaVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v2, v4, :cond_4

    .line 833
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->groupChatTerminatedByUserAsHeavyProperty()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v4

    .line 834
    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v5

    .line 833
    invoke-virtual {v4, v5}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v4

    .line 834
    new-instance v5, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;

    invoke-direct {v5, p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 833
    invoke-virtual {v4, v5}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/forklift/PropertyLoader;->start()V

    .line 801
    .end local v0    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v1    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .end local v2    # "conversationType":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    .end local v3    # "imUseCasePermissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    :cond_4
    return-void
.end method

.method private registerSendingTechnologyChangeListeners()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1785
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 1786
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    .line 1787
    .local v1, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getXmsManager()Lcom/sonyericsson/conversations/sms/XmsManager;

    move-result-object v2

    .line 1789
    .local v2, "xmsManager":Lcom/sonyericsson/conversations/sms/XmsManager;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImFileMessageEventListener:Lcom/sonymobile/jms/message/ImFileMessageEventListener;

    if-nez v3, :cond_0

    .line 1790
    new-instance v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FileMessageEventListener;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FileMessageEventListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FileMessageEventListener;)V

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImFileMessageEventListener:Lcom/sonymobile/jms/message/ImFileMessageEventListener;

    .line 1792
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImFileMessageEventListener:Lcom/sonymobile/jms/message/ImFileMessageEventListener;

    invoke-interface {v1, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->registerMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 1794
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImTextMessageEventListener:Lcom/sonymobile/jms/message/ImTextMessageEventListener;

    if-nez v3, :cond_1

    .line 1795
    new-instance v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$TextMessageEventListener;)V

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImTextMessageEventListener:Lcom/sonymobile/jms/message/ImTextMessageEventListener;

    .line 1797
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImTextMessageEventListener:Lcom/sonymobile/jms/message/ImTextMessageEventListener;

    invoke-interface {v1, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->registerMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 1799
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mXmsReceivedListener:Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;

    if-nez v3, :cond_2

    .line 1800
    new-instance v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$MMSAndSmsReceivedListener;)V

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mXmsReceivedListener:Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;

    .line 1802
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mXmsReceivedListener:Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/sms/XmsManager;->registerXmsReceivedListener(Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;)V

    .line 1784
    return-void
.end method

.method private removeDialogFragment()V
    .locals 3

    .prologue
    .line 1352
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1353
    const-string/jumbo v2, "alert-dialog"

    .line 1352
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 1354
    .local v0, "dlgFragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1351
    :cond_0
    return-void
.end method

.method private removeFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V
    .locals 4
    .param p1, "fragmentEnum"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    .prologue
    const/4 v3, 0x0

    .line 1723
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1725
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-getcom_sonyericsson_conversations_ui_controller_ConversationActivityUiController$FragmentEnumSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1727
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1728
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1729
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1730
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1731
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    goto :goto_0

    .line 1736
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1737
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1738
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1739
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1740
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    goto :goto_0

    .line 1745
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1746
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1747
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1748
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1751
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setCallback(Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;)V

    .line 1752
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    goto :goto_0

    .line 1757
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1758
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1759
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1760
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1761
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    goto :goto_0

    .line 1766
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1767
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1768
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1769
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1770
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    goto/16 :goto_0

    .line 1725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private removeFragments()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1335
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setConvListFragmentVisibility(Z)V

    .line 1336
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 1337
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    .line 1338
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    .line 1339
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeDialogFragment()V

    .line 1340
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeResizeDialogFragment()V

    .line 1334
    return-void
.end method

.method private removeResizeDialogFragment()V
    .locals 3

    .prologue
    .line 1360
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1361
    sget-object v2, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->DIALOG_FRAGMENT_TAG_NAME:Ljava/lang/String;

    .line 1360
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    .line 1362
    .local v0, "resizeDialog":Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->dismiss()V

    .line 1359
    :cond_0
    return-void
.end method

.method private removeSelfContactFromGroup(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1468
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1470
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1469
    invoke-static {v2, v1}, Lcom/sonyericsson/conversations/util/AddressUtil;->checkIfMyPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1471
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1468
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1467
    :cond_1
    return-void
.end method

.method private replaceFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V
    .locals 4
    .param p1, "fragmentEnum"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    .prologue
    .line 1670
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1672
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-getcom_sonyericsson_conversations_ui_controller_ConversationActivityUiController$FragmentEnumSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1668
    :cond_0
    :goto_0
    return-void

    .line 1674
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1675
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const v2, 0x7f0d0074

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1676
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 1681
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1682
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const v2, 0x7f0d0076

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1683
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 1688
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1689
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 1690
    const-string/jumbo v2, "bottom_fragment_editor"

    .line 1689
    const v3, 0x7f0d0077

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1691
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 1696
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1697
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    const v2, 0x7f0d007b

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1698
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 1703
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1705
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    const-string/jumbo v2, "attachment_bar"

    .line 1704
    const v3, 0x7f0d0078

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1706
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->commitFragmentTransaction(Landroid/app/FragmentTransaction;)V

    goto :goto_0

    .line 1672
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private resizeMediaAndCreateGroupConversationIfNeeded(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .locals 10
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3327
    .local p3, "mediaUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v8

    .line 3328
    sget-object v9, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 3327
    if-ne v8, v9, :cond_1

    .line 3329
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 3330
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3331
    .local v4, "imContactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "participant$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/model/Participant;

    .line 3332
    .local v6, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 3345
    .end local v4    # "imContactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    .end local v6    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v7    # "participant$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 3346
    .local v3, "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    invoke-interface {v8, p1, v3}, Lcom/sonyericsson/conversations/messages/MessageSenderListener;->onMessagesSendFailure(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/Exception;)V

    .line 3325
    .end local v3    # "e":Lcom/sonymobile/jms/permission/ImPermissionDeniedException;
    :goto_1
    return-void

    .line 3335
    .restart local v4    # "imContactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    .restart local v7    # "participant$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v8

    .line 3337
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getGroupChatSubject()Ljava/lang/String;

    move-result-object v9

    .line 3335
    invoke-interface {v8, v4, v9}, Lcom/sonymobile/jms/conversation/ImConversationApi;->startImGroupConversation(Ljava/util/Collection;Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v5

    .line 3338
    .local v5, "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-virtual {v8, v5}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object p1

    .line 3340
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v8, p1}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 3342
    .end local v4    # "imContactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    .end local v5    # "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .end local v7    # "participant$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/conversations/Apis;->getResizeManager()Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    move-result-object v8

    .line 3343
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 3342
    invoke-virtual {v8, v9, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->resizeMediaFromJoynMessage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    .line 3344
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->cleanupUiResizingMessage()V
    :try_end_1
    .catch Lcom/sonymobile/jms/permission/ImPermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 3347
    :catch_1
    move-exception v0

    .line 3348
    .local v0, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    invoke-interface {v8, p1, v0}, Lcom/sonyericsson/conversations/messages/MessageSenderListener;->onMessagesSendFailure(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3351
    .end local v0    # "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    :catch_2
    move-exception v1

    .line 3352
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    invoke-interface {v8, p1, v1}, Lcom/sonyericsson/conversations/messages/MessageSenderListener;->onMessagesSendFailure(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3349
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_3
    move-exception v2

    .line 3350
    .local v2, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    invoke-interface {v8, p1, v2}, Lcom/sonyericsson/conversations/messages/MessageSenderListener;->onMessagesSendFailure(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private saveDraft(Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 1
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 2913
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    if-nez v0, :cond_0

    .line 2914
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftAsync(Lcom/sonyericsson/conversations/ui/Composer;Z)V

    .line 2912
    :cond_0
    return-void
.end method

.method private saveDraft(Lcom/sonyericsson/conversations/ui/Composer;ZZ)V
    .locals 11
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p2, "popupToast"    # Z
    .param p3, "isAsync"    # Z

    .prologue
    const/4 v10, 0x0

    .line 2944
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v8

    .line 2946
    .local v8, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->getDraft()Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2947
    return-void

    .line 2951
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveValidRecipients(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 2953
    const/4 v2, 0x0

    .line 2955
    .local v2, "subject":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->getSaveDraftSubject()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2959
    .end local v2    # "subject":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    .line 2960
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v2

    .line 2963
    :cond_1
    new-instance v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$24;

    invoke-direct {v6, p0, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$24;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 2975
    .local v6, "saveDraftListener":Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->getDraft()Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 2978
    .local v1, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :goto_1
    new-instance v0, Lcom/sonyericsson/conversations/draft/SaveDraftTask;

    .line 2979
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->getUris()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->getParticipants()Ljava/util/List;

    move-result-object v5

    .line 2980
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v7

    .line 2978
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/draft/SaveDraftTask;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;I)V

    .line 2982
    .local v0, "saveDraftTask":Lcom/sonyericsson/conversations/draft/SaveDraftTask;
    if-eqz p3, :cond_3

    .line 2983
    new-array v3, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2988
    :goto_2
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->removeDraft()V

    .line 2989
    invoke-virtual {p1, v10}, Lcom/sonyericsson/conversations/ui/Composer;->setDirty(Z)V

    .line 2943
    return-void

    .line 2956
    .end local v0    # "saveDraftTask":Lcom/sonyericsson/conversations/draft/SaveDraftTask;
    .end local v1    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .end local v6    # "saveDraftListener":Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;
    .restart local v2    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2957
    .local v9, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v3, "Failed to get draft subject"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    goto :goto_0

    .line 2976
    .end local v2    # "subject":Ljava/lang/String;
    .end local v9    # "e":Lcom/google/android/mms/MmsException;
    .restart local v6    # "saveDraftListener":Lcom/sonyericsson/conversations/draft/SaveDraftTask$SaveDraftListener;
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->getDraft()Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/draft/Draft;->getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .restart local v1    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    goto :goto_1

    .line 2985
    .restart local v0    # "saveDraftTask":Lcom/sonyericsson/conversations/draft/SaveDraftTask;
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/draft/SaveDraftTask;->saveDraftSynchronously()V

    goto :goto_2
.end method

.method private saveDraftAsync(Lcom/sonyericsson/conversations/ui/Composer;Z)V
    .locals 1
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p2, "popupToast"    # Z

    .prologue
    .line 2925
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft(Lcom/sonyericsson/conversations/ui/Composer;ZZ)V

    .line 2924
    return-void
.end method

.method private saveStatusForRestore(Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 3
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 986
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftSync(Lcom/sonyericsson/conversations/ui/Composer;Z)V

    .line 988
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 989
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 990
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 985
    return-void
.end method

.method private saveValidRecipients(Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 18
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 3008
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isAdded()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3009
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getValidRecipients()Ljava/util/ArrayList;

    move-result-object v4

    .line 3010
    .local v4, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_5

    .line 3015
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 3016
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    .line 3015
    if-eq v14, v15, :cond_1

    const/4 v7, 0x1

    .line 3017
    .local v7, "needUpdate":Z
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 3018
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3022
    .local v2, "address":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_0

    .line 3023
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14, v2}, Lcom/sonyericsson/conversations/util/AddressUtil;->checkIfMyPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    .line 3022
    if-eqz v14, :cond_0

    .line 3024
    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3025
    const/4 v7, 0x1

    .line 3017
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 3015
    .end local v2    # "address":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "needUpdate":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "needUpdate":Z
    goto :goto_0

    .line 3028
    .restart local v6    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isRecipientDirty()Z

    move-result v14

    if-nez v14, :cond_3

    if-eqz v7, :cond_5

    .line 3029
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3030
    .local v12, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "address$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3031
    .restart local v2    # "address":Ljava/lang/String;
    new-instance v11, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v11, v2}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 3032
    .local v11, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3036
    .end local v2    # "address":Ljava/lang/String;
    .end local v11    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v5

    .line 3037
    .local v5, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v5, v12}, Lcom/sonyericsson/conversations/conversation/Conversation;->setParticipants(Ljava/util/List;)V

    .line 3007
    .end local v3    # "address$iterator":Ljava/util/Iterator;
    .end local v4    # "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v6    # "i":I
    .end local v7    # "needUpdate":Z
    .end local v12    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_5
    :goto_3
    return-void

    .line 3044
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v8

    .line 3045
    .local v8, "originParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3046
    .local v13, "validParticipants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v8, :cond_5

    .line 3049
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "p$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/conversations/model/Participant;

    .line 3050
    .local v9, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v9}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3051
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3056
    .end local v9    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-eq v14, v15, :cond_5

    .line 3059
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 3060
    const-wide/16 v16, -0x1

    .line 3059
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v13}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(JLjava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    goto :goto_3
.end method

.method private sendGroupChatMessage(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Ljava/util/List;)V
    .locals 10
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p3, "senderListener"    # Lcom/sonyericsson/conversations/messages/MessageSenderListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Lcom/sonyericsson/conversations/messages/MessageSenderListener;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3608
    .local p4, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3609
    .local v1, "imContactNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "participant$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/conversations/model/Participant;

    .line 3610
    .local v8, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v8}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3613
    .end local v8    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getGroupChatSubject()Ljava/lang/String;

    move-result-object v2

    .line 3614
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStartConversationTaskListener:Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;

    move-object v4, p2

    move-object v5, p4

    move-object v7, p3

    .line 3613
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/sonyericsson/conversations/conversation/ConversationManager;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;Lcom/sonyericsson/conversations/messages/MessageSenderListener;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/conversation/action/StartGroupChatWithMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3607
    return-void
.end method

.method private sendJoynMessage(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/messages/MessageSenderListener;)V
    .locals 5
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p4, "senderListener"    # Lcom/sonyericsson/conversations/messages/MessageSenderListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sonyericsson/conversations/messages/MessageSenderListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3571
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImFileApi()Lcom/sonymobile/jms/file/ImFileApi;

    move-result-object v0

    .line 3574
    .local v0, "imFileApi":Lcom/sonymobile/jms/file/ImFileApi;
    invoke-static {v0, p3}, Lcom/sonyericsson/conversations/model/MessageUtil;->exceedFileSizeMaximum(Lcom/sonymobile/jms/file/ImFileApi;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3575
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showMaxSizeDialog()V

    .line 3576
    return-void

    .line 3580
    :cond_0
    invoke-static {v0, p3}, Lcom/sonyericsson/conversations/model/MessageUtil;->exceedFileSizeWarning(Lcom/sonymobile/jms/file/ImFileApi;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3581
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showWarnSizeDialog(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    .line 3582
    return-void

    .line 3585
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-ne v3, v4, :cond_2

    .line 3586
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 3587
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendGroupChatMessage(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Ljava/util/List;)V

    .line 3593
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_3

    :goto_1
    invoke-direct {p0, v1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->gaPushEventJoynMessage(ZLcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    .line 3570
    return-void

    .line 3589
    :cond_2
    invoke-static {p1, p2, p4, p3}, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;->newJoynMessageSenderTask(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Ljava/util/List;)Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/messages/JoynMessageSenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    move v1, v2

    .line 3593
    goto :goto_1
.end method

.method private sendMessage(I)V
    .locals 22
    .param p1, "subscriptionId"    # I

    .prologue
    .line 3166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3167
    :cond_0
    return-void

    .line 3170
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3171
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 3172
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 3173
    const v3, 0x7f0b0043

    .line 3174
    const/4 v7, 0x0

    .line 3172
    invoke-static {v2, v3, v7}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 3175
    return-void

    .line 3178
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setUpdateFocus(Z)V

    .line 3181
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 3186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v2, :cond_3

    .line 3187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setAllowDeleteObsoleteThreads(Z)V

    .line 3190
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 3191
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListUpdateNecessity(Z)V

    .line 3193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    .line 3197
    .local v4, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->composeAndGetMessage()Lcom/sonyericsson/conversations/model/Message;
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 3218
    .local v14, "message":Lcom/sonyericsson/conversations/model/Message;
    if-nez v14, :cond_4

    .line 3219
    return-void

    .line 3213
    .end local v14    # "message":Lcom/sonyericsson/conversations/model/Message;
    :catch_0
    move-exception v9

    .line 3214
    .local v9, "e":Lcom/android/mms/ExceedMessageSizeException;
    sget-object v2, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->MESSAGE_TOO_LARGE:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showExternalSendErrorToast(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    .line 3215
    return-void

    .line 3210
    .end local v9    # "e":Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v11

    .line 3211
    .local v11, "e":Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;->getContentStatus()Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showExternalSendErrorToast(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    .line 3212
    return-void

    .line 3205
    .end local v11    # "e":Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
    :catch_2
    move-exception v10

    .line 3206
    .local v10, "e":Lcom/google/android/mms/MmsException;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 3207
    const v3, 0x7f0b00ef

    .line 3208
    const/4 v7, 0x1

    .line 3206
    invoke-static {v2, v3, v7}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 3209
    return-void

    .line 3202
    .end local v10    # "e":Lcom/google/android/mms/MmsException;
    :catch_3
    move-exception v12

    .line 3203
    .local v12, "e":Ljava/lang/SecurityException;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSecurityException()V

    .line 3204
    return-void

    .line 3198
    .end local v12    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v16

    .line 3199
    .local v16, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    const-string/jumbo v2, "Could not resize image enough to fit the message"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3200
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleResizeException(Lcom/sonyericsson/conversations/util/ResizeException;)V

    .line 3201
    return-void

    .line 3222
    .end local v16    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    .restart local v14    # "message":Lcom/sonyericsson/conversations/model/Message;
    :cond_4
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3223
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v2

    .line 3222
    if-eqz v2, :cond_6

    .line 3224
    instance-of v2, v14, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-nez v2, :cond_5

    instance-of v2, v14, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 3222
    if-eqz v2, :cond_6

    .line 3225
    :cond_5
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    .line 3226
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3225
    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getChangeDefaultSmsPackageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 3227
    .local v13, "intent":Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 3228
    const v3, 0xbada

    .line 3227
    invoke-virtual {v2, v13, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3229
    return-void

    .line 3232
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_6
    instance-of v2, v14, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-nez v2, :cond_7

    .line 3233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->runSendAnimation()V

    .line 3236
    :cond_7
    instance-of v2, v14, Lcom/sonyericsson/conversations/model/JoynMessage;

    if-eqz v2, :cond_c

    .line 3238
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/jms/setting/ImSettingApi;->getFileResizeOption()Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    move-result-object v17

    .line 3240
    .local v17, "resizeOption":Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    sget-object v2, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_ASK:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_8

    .line 3241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->runSendAnimation()V

    .line 3244
    :cond_8
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/conversations/conversation/ConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    if-ne v2, v3, :cond_9

    .line 3245
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 3247
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v2, v3, :cond_a

    .line 3248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 3249
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    .line 3248
    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetThreadId(Lcom/sonyericsson/conversations/model/Participant;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    .line 3255
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    :cond_9
    move-object v5, v14

    .line 3258
    check-cast v5, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 3260
    .local v5, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/JoynMessage;->getSlideshowModel()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getMediaModelUriList()Ljava/util/List;

    move-result-object v6

    .line 3262
    .local v6, "mediaUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/sonyericsson/conversations/util/MediaUtil;->containsResizeableMedia(Landroid/content/Context;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 3263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendJoynMessage(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/messages/MessageSenderListener;)V

    .line 3264
    return-void

    .line 3251
    .end local v5    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .end local v6    # "mediaUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 3252
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v20

    .line 3253
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    .line 3251
    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(JLjava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    goto :goto_0

    .line 3267
    .restart local v5    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .restart local v6    # "mediaUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_b
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-getcom_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3282
    new-instance v2, Ljava/lang/StringBuilder;

    .line 3283
    const-string/jumbo v3, "Unknown file resize option detected \'"

    .line 3282
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3284
    const-string/jumbo v3, "\'"

    .line 3282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 3319
    .end local v5    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .end local v6    # "mediaUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v17    # "resizeOption":Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    :goto_1
    new-instance v8, Lcom/sonymobile/conversations/directshare/DataUsageStatUpdaterTask;

    .line 3320
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 3319
    invoke-direct {v8, v2}, Lcom/sonymobile/conversations/directshare/DataUsageStatUpdaterTask;-><init>(Ljava/util/List;)V

    .line 3321
    .local v8, "dataUsageStatUpdaterTask":Lcom/sonymobile/conversations/directshare/DataUsageStatUpdaterTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v8, v2}, Lcom/sonymobile/conversations/directshare/DataUsageStatUpdaterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3165
    return-void

    .line 3269
    .end local v8    # "dataUsageStatUpdaterTask":Lcom/sonymobile/conversations/directshare/DataUsageStatUpdaterTask;
    .restart local v5    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .restart local v6    # "mediaUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .restart local v17    # "resizeOption":Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendJoynMessage(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/messages/MessageSenderListener;)V

    goto :goto_1

    .line 3272
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->cancelEstimateTask()V

    .line 3273
    new-instance v2, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 3274
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEstimateListener:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;

    .line 3273
    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEstimateJoynMediaSizeTask:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;

    .line 3275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEstimateJoynMediaSizeTask:Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 3278
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->resizeMediaAndCreateGroupConversationIfNeeded(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    goto :goto_1

    .line 3287
    .end local v5    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .end local v6    # "mediaUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v17    # "resizeOption":Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    :cond_c
    instance-of v2, v14, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v2, :cond_d

    .line 3289
    :try_start_1
    move-object v0, v14

    check-cast v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    move-object v15, v0

    .line 3290
    .local v15, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->setSubscriptionId(I)V

    .line 3291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->setPriority(I)V

    .line 3292
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMmsMessage(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/MmsMessage;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 3293
    .end local v15    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    :catch_5
    move-exception v10

    .line 3294
    .restart local v10    # "e":Lcom/google/android/mms/MmsException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    invoke-interface {v2, v4, v10}, Lcom/sonyericsson/conversations/messages/MessageSenderListener;->onMessagesSendFailure(Lcom/sonyericsson/conversations/conversation/Conversation;Ljava/lang/Exception;)V

    goto :goto_1

    .line 3296
    .end local v10    # "e":Lcom/google/android/mms/MmsException;
    :cond_d
    instance-of v2, v14, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v2, :cond_10

    .line 3297
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3298
    const-string/jumbo v2, "joyn"

    .line 3299
    const-string/jumbo v3, "sms_mms"

    const-string/jumbo v7, "text: 1"

    .line 3298
    invoke-static {v2, v3, v7}, Lcom/sonymobile/conversations/analytics/Analytics;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move-object/from16 v18, v14

    .line 3302
    check-cast v18, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 3303
    .local v18, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->setSubscriptionId(I)V

    .line 3304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/model/SmsMessage;->setPriority(I)V

    .line 3305
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v2

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-nez v2, :cond_f

    .line 3307
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->createXmsConversation(Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v19

    .line 3308
    .local v19, "xmsConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 3309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/conversation/Conversation;Z)V

    .line 3311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v7

    .line 3310
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2, v3, v7}, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;->newSmsSenderTask(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/SmsMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 3314
    .end local v19    # "xmsConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 3313
    move-object/from16 v0, v18

    invoke-static {v4, v0, v2, v3}, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;->newSmsSenderTask(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/SmsMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Landroid/content/Context;)Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/messages/SmsMessageSenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 3317
    .end local v18    # "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    :cond_10
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown message type : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v14, Lcom/sonyericsson/conversations/model/Message;->type:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private sendMmsMessage(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/MmsMessage;)V
    .locals 5
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3555
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSaveDraftSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->setSubject(Ljava/lang/String;Z)V

    .line 3557
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3559
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->createXmsConversation(Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 3560
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    .line 3558
    invoke-static {v0, p2, v1, v2, v3}, Lcom/sonyericsson/conversations/messages/MmsSendMessageTask;->newMmsSenderTask(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/MmsMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/messages/MmsSendMessageTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/MmsSendMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3566
    :goto_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->gaPushEventMmsMessage(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    .line 3554
    return-void

    .line 3562
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendMessageListener:Lcom/sonyericsson/conversations/messages/MessageSenderListener;

    .line 3563
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3562
    invoke-static {p1, p2, v0, v1}, Lcom/sonyericsson/conversations/messages/MmsSendMessageTask;->newMmsSenderTask(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/MmsMessage;Lcom/sonyericsson/conversations/messages/MessageSenderListener;Landroid/content/Context;)Lcom/sonyericsson/conversations/messages/MmsSendMessageTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/MmsSendMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setAttachmentBarFragmentVisibility(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2705
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2706
    return-void

    .line 2709
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    if-nez v1, :cond_1

    .line 2710
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 2711
    const-string/jumbo v3, "attachment_bar"

    .line 2710
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    .line 2714
    :cond_1
    if-eqz p1, :cond_6

    .line 2715
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    if-nez v1, :cond_2

    .line 2716
    new-instance v1, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    .line 2718
    :cond_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ATTACHMENTBARFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->replaceFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    .line 2719
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->setMessageListResponsiveLayout(Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;)V

    .line 2720
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->addMessageListLayoutObserver(Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;)V

    .line 2721
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->setAttachmentTarget(Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;)V

    .line 2731
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2732
    const v3, 0x7f0d0078

    .line 2731
    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2734
    .local v0, "attachmentContainer":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 2735
    if-eqz p1, :cond_7

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2738
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v1, :cond_5

    .line 2739
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    :goto_2
    invoke-virtual {v3, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2704
    :cond_5
    return-void

    .line 2723
    .end local v0    # "attachmentContainer":Landroid/view/View;
    :cond_6
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ATTACHMENTBARFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    .line 2724
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    if-eqz v1, :cond_3

    .line 2725
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->setMessageListResponsiveLayout(Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;)V

    .line 2726
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->removeMessageListLayoutObserver(Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout$MessageListLayoutObserver;)V

    .line 2727
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->setAttachmentTarget(Lcom/sonyericsson/conversations/ui/attachments/AttachmentTarget;)V

    goto :goto_0

    .line 2735
    .restart local v0    # "attachmentContainer":Landroid/view/View;
    :cond_7
    const/16 v1, 0x8

    goto :goto_1

    :cond_8
    move-object v1, v2

    .line 2739
    goto :goto_2
.end method

.method private setConvListFragmentVisibility(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-nez v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1568
    const v1, 0x7f0d0074

    .line 1567
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .line 1571
    :cond_0
    if-eqz p1, :cond_4

    .line 1572
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-nez v0, :cond_1

    .line 1573
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->createConversationListFragment()Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .line 1575
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isJoynWelcomeScreenDisplayed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1576
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isWelcomeScreenDisplayed()Z

    move-result v0

    .line 1575
    if-eqz v0, :cond_3

    .line 1577
    :cond_2
    const-string/jumbo v0, "Conversation list"

    invoke-static {v0}, Lcom/sonymobile/conversations/analytics/Analytics;->pushAppView(Ljava/lang/String;)V

    .line 1579
    :cond_3
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->CONVERSATIONLISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->replaceFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    .line 1565
    :goto_0
    return-void

    .line 1581
    :cond_4
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->CONVERSATIONLISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    goto :goto_0
.end method

.method private setEditorFragmentVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-nez v0, :cond_0

    .line 2683
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 2684
    const-string/jumbo v1, "bottom_fragment_editor"

    .line 2683
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 2687
    :cond_0
    if-eqz p1, :cond_2

    .line 2688
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-nez v0, :cond_1

    .line 2689
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;-><init>(Lcom/sonyericsson/conversations/ui/Composer;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 2690
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragmentCallback:Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setCallback(Lcom/sonyericsson/conversations/ui/EditorFragmentCallback;)V

    .line 2692
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_1

    .line 2693
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->setRecipientEditorContentListener(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;)V

    .line 2696
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->EDITORFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->replaceFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    .line 2701
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setAttachmentBarFragmentVisibility(Z)V

    .line 2681
    return-void

    .line 2698
    :cond_2
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->EDITORFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    goto :goto_0
.end method

.method private setLastKnownDefaultSmsPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentDefaultSmsPackage"    # Ljava/lang/String;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLastKnownDefaultSmsPackage:Ljava/lang/String;

    .line 924
    return-void
.end method

.method private setMsgListFragmentVisibility(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 1822
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-nez v1, :cond_0

    .line 1823
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1824
    const v2, 0x7f0d0076

    .line 1823
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .line 1827
    :cond_0
    if-eqz p1, :cond_3

    .line 1828
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-nez v1, :cond_2

    .line 1829
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .line 1831
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1832
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1833
    const-string/jumbo v1, "focusmessageuri"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    :cond_1
    const-string/jumbo v1, "conversation"

    .line 1836
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    .line 1835
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1837
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1838
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setCallback(Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;)V

    .line 1842
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 1844
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->MESSAGELISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->replaceFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    .line 1821
    :goto_1
    return-void

    .line 1840
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(Landroid/net/Uri;)V

    goto :goto_0

    .line 1846
    :cond_3
    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->MESSAGELISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    goto :goto_1
.end method

.method private setMsgListUpdateNecessity(Z)V
    .locals 1
    .param p1, "isNeed"    # Z

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setUpdateFocus(Z)V

    .line 2213
    :cond_0
    return-void
.end method

.method private setMuteNotificationBarVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 4034
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 4035
    const v3, 0x7f0d007a

    .line 4034
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4036
    .local v0, "muteNotificationBar":Landroid/view/View;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 4037
    const v3, 0x7f0d00d0

    .line 4036
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4039
    .local v1, "turnOn":Landroid/widget/Button;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 4040
    :cond_0
    return-void

    .line 4042
    :cond_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$33;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$33;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4051
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4052
    if-eqz p1, :cond_2

    .line 4053
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getPrimaryDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4054
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4033
    :goto_0
    return-void

    .line 4056
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setToFieldFragmentVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-nez v0, :cond_0

    .line 2751
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 2752
    const v1, 0x7f0d007b

    .line 2751
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    .line 2755
    :cond_0
    if-eqz p1, :cond_3

    .line 2756
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-nez v0, :cond_1

    .line 2757
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    .line 2758
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mRecipientEditorPanelListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->setRecipientEditorPanelListener(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;)V

    .line 2761
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->TOFIELDFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->replaceFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    .line 2762
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->setRecipientEditorContentListener(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;)V

    .line 2749
    :cond_2
    :goto_0
    return-void

    .line 2764
    :cond_3
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->TOFIELDFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragment(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;)V

    .line 2765
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_2

    .line 2766
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    goto :goto_0
.end method

.method private setupEditorFragment()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3892
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3893
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 3896
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    .line 3897
    .local v0, "conv":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 3898
    .local v1, "isGroupChat":Z
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->hasValidRecipients()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 3900
    :cond_1
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 3904
    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    .line 3891
    :goto_1
    return-void

    .line 3897
    .end local v1    # "isGroupChat":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isGroupChat":Z
    goto :goto_0

    .line 3906
    :cond_3
    if-eqz v1, :cond_4

    .line 3907
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->groupChatTerminatedByUserAsHeavyProperty()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v2

    invoke-static {}, Lcom/sonymobile/forklift/Forklift;->getInstance()Lcom/sonymobile/forklift/Forklift;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/HeavyProperty;->loadWith(Lcom/sonymobile/forklift/Forklift;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    .line 3908
    new-instance v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$31;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$31;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 3907
    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/PropertyLoader;->onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/forklift/PropertyLoader;->forceRefresh()Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/forklift/PropertyLoader;->start()V

    goto :goto_1

    .line 3919
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showEditorFragment()V

    .line 3920
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setAttachmentBarFragmentVisibility(Z)V

    goto :goto_1
.end method

.method private setupFragments()V
    .locals 1

    .prologue
    .line 3943
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3945
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupToFieldFragment()V

    .line 3946
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupMsgListFragment()V

    .line 3947
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupEditorFragment()V

    .line 3942
    :cond_0
    return-void
.end method

.method private setupMsgListFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3867
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-nez v0, :cond_0

    .line 3869
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    .line 3887
    :goto_0
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 3888
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListUpdateNecessity(Z)V

    .line 3866
    return-void

    .line 3870
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3877
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/conversation/Conversation;Z)V

    .line 3878
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    goto :goto_0

    .line 3880
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 3881
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessageUri(Landroid/net/Uri;)V

    .line 3882
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/conversation/Conversation;Z)V

    goto :goto_0
.end method

.method private setupMuteNotificationBar(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 3
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const/4 v2, 0x0

    .line 4013
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMuteNotificationBarVisibility(Z)V

    .line 4015
    sget-object v0, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4016
    return-void

    .line 4019
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$32;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$32;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 4030
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 4019
    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$32;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4012
    return-void
.end method

.method private setupToFieldFragment()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3928
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3929
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->resetToField()V

    .line 3932
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3935
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    .line 3936
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    .line 3935
    if-ne v0, v1, :cond_2

    .line 3937
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    .line 3925
    :cond_2
    :goto_0
    return-void

    .line 3933
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3934
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    goto :goto_0
.end method

.method private showConvListContentArea()V
    .locals 2

    .prologue
    .line 4512
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4513
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->finishUp()V

    .line 4516
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->setVisibility(I)V

    .line 4517
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4518
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateActionBar()V

    .line 4511
    return-void
.end method

.method private showConversationListOverlay()V
    .locals 3

    .prologue
    .line 1596
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isConvListContentAreaVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showFirstExperienceActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1597
    :cond_0
    return-void

    .line 1599
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1595
    :cond_2
    :goto_0
    return-void

    .line 1601
    :cond_3
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    .line 1602
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1601
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getChangeDefaultSmsPackageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1603
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0xbada

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 14
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconResId"    # I
    .param p3, "iconAttribute"    # I
    .param p4, "messageId"    # I
    .param p5, "positiveBtnResId"    # I
    .param p6, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "negativeBtnResId"    # I
    .param p8, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p9, "cancelledListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 3760
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3761
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3763
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3764
    const/4 v13, 0x0

    move/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 3761
    invoke-static/range {v1 .. v13}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;IILandroid/widget/ListAdapter;)V

    .line 3759
    :cond_0
    return-void
.end method

.method private showDraftsPopup()V
    .locals 2

    .prologue
    .line 2993
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$25;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$25;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2992
    return-void
.end method

.method private showEditorFragment()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3952
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3953
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->initConversation(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    .line 3951
    :goto_0
    return-void

    .line 3958
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    goto :goto_0
.end method

.method private showExternalSendErrorToast(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V
    .locals 3
    .param p1, "errorCode"    # Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .prologue
    .line 3819
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-getcom_sonyericsson_conversations_restrictions_RestrictionsChecker$ContentStatusSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3860
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Bad content status"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3822
    :pswitch_0
    return-void

    .line 3825
    :pswitch_1
    const v0, 0x7f0b00bf

    .line 3863
    .local v0, "messageId":I
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 3817
    return-void

    .line 3830
    .end local v0    # "messageId":I
    :pswitch_2
    const v0, 0x7f0b00ba

    .line 3831
    .restart local v0    # "messageId":I
    goto :goto_0

    .line 3834
    .end local v0    # "messageId":I
    :pswitch_3
    const v0, 0x7f0b00bb

    .line 3835
    .restart local v0    # "messageId":I
    goto :goto_0

    .line 3838
    .end local v0    # "messageId":I
    :pswitch_4
    const v0, 0x7f0b00c0

    .line 3839
    .restart local v0    # "messageId":I
    goto :goto_0

    .line 3842
    .end local v0    # "messageId":I
    :pswitch_5
    const v0, 0x7f0b014e

    .line 3843
    .restart local v0    # "messageId":I
    goto :goto_0

    .line 3846
    .end local v0    # "messageId":I
    :pswitch_6
    const v0, 0x7f0b014f

    .line 3847
    .restart local v0    # "messageId":I
    goto :goto_0

    .line 3850
    .end local v0    # "messageId":I
    :pswitch_7
    const v0, 0x7f0b0135

    .line 3851
    .restart local v0    # "messageId":I
    goto :goto_0

    .line 3856
    .end local v0    # "messageId":I
    :pswitch_8
    const v0, 0x7f0b018c

    .line 3857
    .restart local v0    # "messageId":I
    goto :goto_0

    .line 3819
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_2
    .end packed-switch
.end method

.method private showFirstExperienceActivity()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1613
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v1

    .line 1615
    .local v1, "settingsManager":Lcom/sonyericsson/conversations/settings/SettingsManager;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getBrandingPolicy()Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;->isSetupWizardEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1616
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isJoynWelcomeScreenDisplayed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1617
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    .line 1618
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1617
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getWelcomeScreenIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 1634
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1337

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1635
    return v5

    .line 1620
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v4

    .line 1622
    :cond_1
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isWelcomeScreenDisplayed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1623
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1624
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    .line 1625
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1624
    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getWelcomeScreenIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1627
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v2

    .line 1628
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x2

    .line 1627
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getWelcomeScreenIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1631
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return v4
.end method

.method private showMaxSizeDialog()V
    .locals 3

    .prologue
    .line 3652
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3653
    :cond_0
    return-void

    .line 3655
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;->newInstance()Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;

    move-result-object v0

    .line 3656
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "alert-dialog"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/messages/dialogs/ImMaxSizeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3651
    return-void
.end method

.method private showMsgListContentArea()V
    .locals 2

    .prologue
    .line 4506
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->setVisibility(I)V

    .line 4507
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4508
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateActionBar()V

    .line 4505
    return-void
.end method

.method private declared-synchronized showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    monitor-enter p0

    .line 3801
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 3802
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3805
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3806
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 3800
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showResizeDialog(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;JJLjava/util/List;)V
    .locals 5
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .param p3, "originalSize"    # J
    .param p5, "resizedSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3622
    .local p7, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3623
    :cond_0
    return-void

    .line 3627
    :cond_1
    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;

    invoke-direct {v1, p0, p1, p2, p7}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$29;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    .line 3646
    .local v1, "resizeDialogListener":Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;
    invoke-static {p7, p3, p4, p5, p6}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->newInstance(Ljava/util/List;JJ)Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    move-result-object v0

    .line 3647
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->setListener(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$ImResizeDialogListener;)V

    .line 3648
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    sget-object v3, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->DIALOG_FRAGMENT_TAG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3621
    return-void
.end method

.method private showWarnSizeDialog(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .locals 3
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p2, "joynMessage"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3661
    .local p3, "fileUriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3662
    :cond_0
    return-void

    .line 3666
    :cond_1
    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$30;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$30;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V

    .line 3676
    .local v1, "warnSizeDialogListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;->newInstance()Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;

    move-result-object v0

    .line 3678
    .local v0, "imWarnSizeDialog":Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;
    const v2, 0x7f0b0165

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 3679
    const v2, 0x7f0b0166

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 3680
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/messages/dialogs/ImWarnSizeSendDialog;->showDialog(Landroid/app/FragmentManager;)V

    .line 3660
    return-void
.end method

.method private unmuteGroupConversation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4007
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 4008
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->setConversationIsMuted(Lcom/sonyericsson/conversations/conversation/ConversationId;Z)V

    .line 4009
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMuteNotificationBarVisibility(Z)V

    .line 4006
    return-void
.end method

.method private unregisterJoynListeners()V
    .locals 3

    .prologue
    .line 966
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v0

    .line 968
    .local v0, "imUsecasePermissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposerCapabilityListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ComposerCapabilityChangedListener;

    if-eqz v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposerCapabilityListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ComposerCapabilityChangedListener;

    .line 969
    invoke-interface {v0, v1}, Lcom/sonymobile/jms/permission/ImPermissionApi;->unregisterImContactPermissionChangeListener(Lcom/sonymobile/jms/permission/ImContactPermissionChangeListener;)V

    .line 972
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImUndeliveredMessageEventListener:Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;

    if-eqz v1, :cond_1

    .line 973
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    .line 975
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImUndeliveredMessageEventListener:Lcom/sonymobile/jms/message/ImUndeliveredMessageEventListener;

    .line 973
    invoke-interface {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->unregisterMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 977
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImConversationEventListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;

    if-eqz v1, :cond_2

    .line 978
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v1

    .line 980
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImConversationEventListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ImConversationEventListener;

    .line 978
    invoke-interface {v1, v2}, Lcom/sonymobile/jms/conversation/ImConversationApi;->unregisterImConversationEventListener(Lcom/sonymobile/jms/conversation/ImConversationEventListener;)V

    .line 982
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->unregisterSendingTechnologyChangeListenersIfTheyExist()V

    .line 965
    return-void
.end method

.method private unregisterSendingTechnologyChangeListenersIfTheyExist()V
    .locals 4

    .prologue
    .line 1806
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 1807
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getXmsManager()Lcom/sonyericsson/conversations/sms/XmsManager;

    move-result-object v2

    .line 1808
    .local v2, "xmsManager":Lcom/sonyericsson/conversations/sms/XmsManager;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mXmsReceivedListener:Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;

    if-eqz v3, :cond_0

    .line 1809
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mXmsReceivedListener:Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/sms/XmsManager;->unRegisterXmsReceivedListener(Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;)V

    .line 1811
    :cond_0
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    .line 1812
    .local v1, "imMessageStorageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImFileMessageEventListener:Lcom/sonymobile/jms/message/ImFileMessageEventListener;

    if-eqz v3, :cond_1

    .line 1813
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImFileMessageEventListener:Lcom/sonymobile/jms/message/ImFileMessageEventListener;

    invoke-interface {v1, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->unregisterMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 1816
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImTextMessageEventListener:Lcom/sonymobile/jms/message/ImTextMessageEventListener;

    if-eqz v3, :cond_2

    .line 1817
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mImTextMessageEventListener:Lcom/sonymobile/jms/message/ImTextMessageEventListener;

    invoke-interface {v1, v3}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->unregisterMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 1805
    :cond_2
    return-void
.end method

.method private updateActionBar()V
    .locals 2

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2082
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-ne v0, v1, :cond_0

    .line 2084
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->removeRecipientActionBar()V

    .line 2085
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->removeContactLookupListener()V

    .line 2088
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    if-nez v0, :cond_1

    .line 2089
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    .line 2090
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2089
    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    .line 2092
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListActionBarController:Lcom/sonyericsson/conversations/ui/controller/ConversationListActionBarController;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    .line 2099
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 2080
    return-void

    .line 2094
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-nez v0, :cond_3

    .line 2095
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    .line 2097
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    goto :goto_0
.end method

.method private updateComposerFromDraftStack(Z)V
    .locals 10
    .param p1, "forceLoadDraft"    # Z

    .prologue
    const/4 v7, 0x0

    .line 2646
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-nez v8, :cond_1

    .line 2647
    :cond_0
    return-void

    .line 2646
    :cond_1
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2649
    if-nez p1, :cond_2

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2650
    return-void

    .line 2653
    :cond_2
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 2654
    .local v1, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/conversations/Apis;->getDraftsManager()Lcom/sonyericsson/conversations/draft/DraftsApi;

    move-result-object v3

    .line 2655
    .local v3, "draftsApi":Lcom/sonyericsson/conversations/draft/DraftsApi;
    invoke-interface {v3, v1}, Lcom/sonyericsson/conversations/draft/DraftsApi;->getLatestDraft(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/draft/Draft;

    move-result-object v2

    .line 2657
    .local v2, "draft":Lcom/sonyericsson/conversations/draft/Draft;
    :try_start_0
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v8, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setDraft(Lcom/sonyericsson/conversations/draft/Draft;)V
    :try_end_0
    .catch Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2662
    :goto_0
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v8, :cond_3

    .line 2663
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/draft/Draft;->getParticipants()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2669
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v7, :cond_4

    if-nez v2, :cond_4

    .line 2670
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->showSoftKeyboard()V

    .line 2645
    :cond_4
    :goto_1
    return-void

    .line 2658
    :catch_0
    move-exception v4

    .line 2659
    .local v4, "e":Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;->getContentStatus()Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showExternalSendErrorToast(Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;)V

    goto :goto_0

    .line 2664
    .end local v4    # "e":Lcom/sonyericsson/conversations/ui/util/MediaContentRestrictionException;
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2665
    .local v0, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/draft/Draft;->getParticipants()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "participant$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/model/Participant;

    .line 2666
    .local v5, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2668
    .end local v5    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_6
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7

    const/4 v7, 0x1

    :cond_7
    invoke-virtual {v8, v0, v7}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->addParticipantsToEditorAsync(Ljava/util/List;Z)V

    goto :goto_1
.end method

.method private updateComposerFromSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 7
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    const/4 v6, 0x0

    .line 2239
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v4, :cond_0

    .line 2240
    return-void

    .line 2243
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->determineSendIntentDataType(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)I

    move-result v2

    .line 2245
    .local v2, "sendIntentType":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 2247
    iget-object v1, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    .line 2248
    .local v1, "forwardUri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendIntentMessageUri(Landroid/net/Uri;)V

    .line 2249
    invoke-direct {p0, v2, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageSubject(ILandroid/net/Uri;)V

    .line 2238
    .end local v1    # "forwardUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 2251
    :cond_2
    iget-object v3, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    .line 2252
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 2253
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4, v3, v6}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;Z)V

    .line 2256
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v5, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forcedSendingTechnology:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/Composer;->forceSendingTechAndRefresh(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    .line 2258
    iget-object v0, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    .line 2260
    .local v0, "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2261
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2260
    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2262
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 2263
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendIntentContentUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 2265
    :cond_4
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendMultipleIntentContentUris(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private updateConversationAndSendMessage(I)V
    .locals 3
    .param p1, "subscriptionId"    # I

    .prologue
    .line 3725
    const-string/jumbo v0, ""

    .line 3726
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b00df

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3725
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 3727
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    .line 3728
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateConversationBeforeSendMessage(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 3731
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage(I)V

    .line 3722
    return-void
.end method

.method private updateConversationBeforeSendMessage(Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 1
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 3735
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveValidRecipients(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 3744
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3745
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isActionbarHideWhenKeypadOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3746
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3747
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 3734
    :cond_0
    return-void
.end method

.method private updateEditorFragment()V
    .locals 2

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_0

    .line 2890
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setShowEmptySubject(Z)V

    .line 2891
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 2888
    :cond_0
    return-void
.end method

.method private updateEditorFragmentComposerViews()V
    .locals 2

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$23;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$23;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2895
    return-void
.end method

.method private updateMessageSubject(ILandroid/net/Uri;)V
    .locals 8
    .param p1, "sendIntentType"    # I
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    .line 2305
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/sonyericsson/conversations/model/MessageUtil;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 2306
    .local v2, "msg":Lcom/sonyericsson/conversations/model/Message;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getComposerContentType()I

    move-result v1

    .line 2309
    .local v1, "messageType":I
    if-ne v1, v7, :cond_2

    instance-of v5, v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v5, :cond_2

    .line 2314
    const-string/jumbo v3, ""

    .line 2315
    .local v3, "originalSubject":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 2317
    .local v0, "finalSubject":Ljava/lang/String;
    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local v2    # "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v3

    .line 2328
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2329
    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v5

    .line 2328
    if-eqz v5, :cond_1

    .line 2330
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->messageSubjectPrefixForType(I)Ljava/lang/String;

    move-result-object v4

    .line 2331
    .local v4, "prefix":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2332
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2333
    move-object v0, v3

    .line 2340
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/conversations/ui/Composer;->setSubject(Ljava/lang/String;)V

    .line 2341
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5, v7}, Lcom/sonyericsson/conversations/ui/Composer;->markSubjectAsFixed(Z)V

    .line 2304
    return-void

    .line 2310
    .end local v0    # "finalSubject":Ljava/lang/String;
    .end local v3    # "originalSubject":Ljava/lang/String;
    .restart local v2    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_2
    return-void

    .line 2335
    .end local v2    # "msg":Lcom/sonyericsson/conversations/model/Message;
    .restart local v0    # "finalSubject":Ljava/lang/String;
    .restart local v3    # "originalSubject":Ljava/lang/String;
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateMsgListFragment(Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    .line 2908
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/conversation/Conversation;Z)V

    .line 2906
    :cond_0
    return-void
.end method

.method private updateOptionMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4522
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isMsgListContentAreaVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4523
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    .line 4524
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMenuVisibleFlag(Z)V

    .line 4526
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_1

    .line 4527
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setMenuVisibleFlag(Z)V

    .line 4529
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_2

    .line 4530
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setMenuVisibleFlag(Z)V

    .line 4543
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4544
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 4521
    :cond_3
    return-void

    .line 4532
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 4533
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_5

    .line 4534
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMenuVisibleFlag(Z)V

    .line 4536
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_6

    .line 4537
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setMenuVisibleFlag(Z)V

    .line 4539
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_2

    .line 4540
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setMenuVisibleFlag(Z)V

    goto :goto_0
.end method

.method private updateRecipients(Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;

    .prologue
    .line 2103
    sget-boolean v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2104
    const-string/jumbo v0, "ConversationId \'"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 2108
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadRecipientsTask:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

    if-eqz v0, :cond_1

    .line 2109
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadRecipientsTask:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->cancel(Z)Z

    .line 2112
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadRecipientsListener:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;-><init>(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadRecipientsTask:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

    .line 2113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadRecipientsTask:Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2102
    return-void
.end method


# virtual methods
.method public collapseRecipientsList()V
    .locals 2

    .prologue
    .line 3982
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    .line 3983
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-ne v0, v1, :cond_0

    .line 3984
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->collapseSelf()V

    .line 3981
    :cond_0
    return-void
.end method

.method public getAllInputRecipientCount()I
    .locals 1

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getAllInputRecipientCount()I

    move-result v0

    return v0

    .line 2209
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getComposer()Lcom/sonyericsson/conversations/ui/Composer;
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    return-object v0
.end method

.method public hasComposerMedia()Z
    .locals 1

    .prologue
    .line 4612
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isMsgListContentAreaVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMedia()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConvListContentAreaVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2190
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSearchBoxVisible()Z
    .locals 1

    .prologue
    .line 3997
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isSearchBoxVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToFieldFragmentVisible()Z
    .locals 1

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionBarHomePressed()V
    .locals 1

    .prologue
    .line 2159
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    if-nez v0, :cond_0

    .line 2161
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->backToConversationList()V

    .line 2155
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 908
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 907
    :cond_1
    return-void
.end method

.method public onAllMessagesDeleted()V
    .locals 3

    .prologue
    .line 1243
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    .line 1244
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    .line 1247
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getParticipants()Ljava/util/List;

    move-result-object v0

    .line 1249
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->resetConversation()V

    .line 1250
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/conversation/Conversation;->setParticipants(Ljava/util/List;)V

    .line 1251
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setDirty(Z)V

    .line 1242
    .end local v0    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2121
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2123
    return v2

    .line 2126
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isSearchBoxVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2127
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideSearchView()V

    .line 2128
    return v2

    .line 2131
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isMsgListContentAreaVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2132
    return v3

    .line 2135
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    if-nez v1, :cond_3

    .line 2136
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsConvListVisibleInHistory:Z

    if-eqz v1, :cond_4

    .line 2137
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->backToConversationList()V

    .line 2144
    :cond_3
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    .line 2146
    .local v0, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->setActiveConversationVisibility(Z)V

    .line 2148
    return v2

    .line 2139
    .end local v0    # "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    :cond_4
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    .line 2140
    return v3
.end method

.method public onCloseSearchModeInConversationList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1278
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mOpenConversationInsearchMode:Z

    if-nez v0, :cond_3

    .line 1279
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsInSearchMode:Z

    .line 1280
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 1281
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 1282
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 1284
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(Landroid/net/Uri;)V

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 1288
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->changeToNormalMode()V

    .line 1293
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_2

    .line 1294
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setMenuVisibleFlag(Z)V

    .line 1277
    :cond_2
    return-void

    .line 1291
    :cond_3
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mOpenConversationInsearchMode:Z

    goto :goto_0
.end method

.method public onContextMenuCreated()V
    .locals 0

    .prologue
    .line 1331
    return-void
.end method

.method public onConvListLoadFinished()V
    .locals 0

    .prologue
    .line 1216
    return-void
.end method

.method public onConversationOpen(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 12
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, 0x1

    .line 1043
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v6

    cmp-long v3, v6, v10

    if-nez v3, :cond_3

    .line 1044
    const-string/jumbo v3, "New Message"

    invoke-static {v3}, Lcom/sonymobile/conversations/analytics/Analytics;->pushAppView(Ljava/lang/String;)V

    .line 1048
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    .line 1050
    .local v0, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->setLastOpenedConversationId(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 1051
    invoke-virtual {v0, v8}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->setActiveConversationVisibility(Z)V

    .line 1055
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isUsingSearchAdapter()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1056
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getFocusedMessageUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 1057
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getSearchString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1058
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getSearchString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1059
    const/4 v6, 0x2

    .line 1058
    invoke-static {v3, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 1062
    :cond_0
    iput-boolean v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    .line 1063
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v3

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 1071
    :goto_1
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupMuteNotificationBar(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 1072
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v3

    .line 1073
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 1072
    invoke-interface {v3, v6}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeNotificationsForConversation(Ljava/lang/String;)V

    .line 1074
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->clearMessageStatusCache()V

    .line 1076
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 1078
    .local v4, "threadId":J
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isInSearchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1079
    iput-boolean v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mOpenConversationInsearchMode:Z

    .line 1082
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1083
    cmp-long v3, v4, v10

    if-nez v3, :cond_5

    .line 1085
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    .line 1088
    .local v2, "openConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    if-nez v2, :cond_4

    .line 1094
    return-void

    .line 1046
    .end local v0    # "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    .end local v2    # "openConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .end local v4    # "threadId":J
    :cond_3
    const-string/jumbo v3, "Message list"

    invoke-static {v3}, Lcom/sonymobile/conversations/analytics/Analytics;->pushAppView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1066
    .restart local v0    # "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    :pswitch_1
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkAndAcceptSessionOnConversationOpen(Lcom/sonymobile/jms/conversation/ImConversationId;)V

    goto :goto_1

    .line 1097
    .restart local v2    # "openConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    .restart local v4    # "threadId":J
    :cond_4
    new-instance v3, Lcom/sonyericsson/conversations/ui/Composer;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    invoke-direct {v3, v6, v2, v7}, Lcom/sonyericsson/conversations/ui/Composer;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;)V

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 1100
    .end local v2    # "openConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isSearchBoxVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1101
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideSearchView()V

    .line 1104
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showMsgListContentArea()V

    .line 1105
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateOptionMenu()V

    .line 1106
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupFragments()V

    .line 1108
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v3

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_1

    .line 1126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported conversation type "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1125
    invoke-static {v3}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 1129
    :cond_7
    :goto_2
    :pswitch_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->updateCapabilities()V

    .line 1131
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v6, 0x400000

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1042
    return-void

    .line 1110
    :pswitch_3
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v1

    .line 1111
    .local v1, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-interface {v1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->tryToRefreshJoynCapabilities(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    .line 1112
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1113
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v3

    .line 1114
    sget-object v6, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .line 1113
    if-eq v3, v6, :cond_7

    .line 1115
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getForcedSendingTechnology()Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    move-result-object v3

    sget-object v6, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->JOYN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    if-ne v3, v6, :cond_7

    .line 1116
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    sget-object v6, Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;->UNKNOWN:Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/conversations/ui/Composer;->forceSendingTechAndRefresh(Lcom/sonyericsson/conversations/ui/Composer$SendingTechnology;)V

    goto :goto_2

    .line 1063
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1108
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 731
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSaveInstanceStateAlreadyCalled:Z

    .line 732
    if-eqz p1, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragments()V

    .line 740
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->currentDefaultSmsPackage()Ljava/lang/String;

    move-result-object v1

    .line 739
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLastKnownDefaultSmsPackage:Ljava/lang/String;

    .line 742
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleIntent(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 743
    return-void

    .line 746
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f03002d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 748
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 749
    const v2, 0x7f0d0073

    .line 748
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/FrameLayout;

    .line 751
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 752
    const v2, 0x7f0d0075

    .line 751
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    .line 753
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    const v2, 0x7f0d0079

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 754
    .local v0, "overlayContainer":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$11;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$11;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 769
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-static {v1}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->getAttachedInstance(Landroid/app/FragmentManager;)Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInvitationFragment:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    .line 771
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getResizeManager()Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    move-result-object v1

    .line 772
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMediaResizeCompletionListener:Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    .line 771
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->setMediaResizeCompletionListener(Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;)V

    .line 774
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleNewIntent(Landroid/os/Bundle;)V

    .line 775
    if-eqz p1, :cond_2

    .line 776
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 778
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 779
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0078

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 780
    const/16 v2, 0x8

    .line 779
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 730
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 998
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->collapseRecipientsList()V

    .line 999
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 1000
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1002
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 1003
    .local v0, "composer":Lcom/sonyericsson/conversations/ui/Composer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1008
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    if-nez v1, :cond_0

    .line 1009
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1010
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveStatusForRestore(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 1017
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    if-eqz v1, :cond_1

    .line 1018
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;->removeAllViews()V

    .line 1019
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/MessageListResponsiveLayout;

    .line 1022
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 1023
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1024
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/FrameLayout;

    .line 1027
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->unregister(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V

    .line 1028
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->cancelAllTasks()V

    .line 1030
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getResizeManager()Lcom/sonyericsson/conversations/ui/controller/ResizeManager;

    move-result-object v1

    .line 1031
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMediaResizeCompletionListener:Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    .line 1030
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->removeMediaResizeCompletionListener(Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;)V

    .line 997
    return-void

    .line 1012
    :cond_3
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft(Lcom/sonyericsson/conversations/ui/Composer;)V

    goto :goto_0
.end method

.method public onFinishDeleteConversationsActionMode(Z)V
    .locals 0
    .param p1, "isDeleteTaskTriggered"    # Z

    .prologue
    .line 1226
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateActionBar()V

    .line 1225
    return-void
.end method

.method public onFinishDeleteMessagesActionMode()V
    .locals 0

    .prologue
    .line 1307
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupEditorFragment()V

    .line 1309
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateActionBar()V

    .line 1306
    return-void
.end method

.method public onLastXmsInConversationDeleted(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 5
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 1232
    const-wide/16 v2, -0x1

    .line 1233
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v4

    .line 1231
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdAndImConversationId(JLcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    .line 1234
    .local v0, "id":Lcom/sonyericsson/conversations/conversation/ConversationId;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->removeConversationFromCache(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    .line 1235
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 1236
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/conversation/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    .line 1235
    invoke-virtual {v2, v0, v3}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    .line 1237
    .local v1, "openConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 1238
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/conversation/Conversation;Z)V

    .line 1230
    return-void
.end method

.method public onMenuOptionSelected()V
    .locals 0

    .prologue
    .line 1327
    return-void
.end method

.method public onMsgListLoadFinished()V
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isVisible()Z

    move-result v0

    .line 1314
    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getSendAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setEditorAnimator(Landroid/animation/Animator;)V

    .line 1317
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getLastMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setLastMessage(Lcom/sonyericsson/conversations/model/Message;)V

    .line 1313
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 699
    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 700
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isSearchBoxVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->hideSearchView()V

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->finishUpToFieldFragment()V

    .line 705
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 708
    .local v0, "composer":Lcom/sonyericsson/conversations/ui/Composer;
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 713
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragments()V

    .line 714
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissSaveContactDialog()V

    .line 715
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->collapseRecipientsList()V

    .line 717
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleIntent(Landroid/os/Bundle;)Z

    .line 718
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleNewIntent(Landroid/os/Bundle;)V

    .line 698
    .end local v0    # "composer":Lcom/sonyericsson/conversations/ui/Composer;
    :goto_1
    return-void

    .line 709
    .restart local v0    # "composer":Lcom/sonyericsson/conversations/ui/Composer;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftSync(Lcom/sonyericsson/conversations/ui/Composer;Z)V

    goto :goto_0

    .line 720
    .end local v0    # "composer":Lcom/sonyericsson/conversations/ui/Composer;
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showConversationListOverlay()V

    goto :goto_1
.end method

.method public onOpenSearchMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 1272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsInSearchMode:Z

    .line 1273
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->changeToSearchMode(Ljava/lang/String;)V

    .line 1271
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 929
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 932
    .local v0, "composer":Lcom/sonyericsson/conversations/ui/Composer;
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    .line 933
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 934
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    .line 933
    if-eqz v1, :cond_1

    .line 934
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    if-eqz v1, :cond_4

    .line 938
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    .line 939
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    .line 941
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isMsgListContentAreaVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 942
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v1

    .line 943
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    .line 942
    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->setActiveConversationVisibility(Z)V

    .line 946
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 947
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    if-eqz v1, :cond_3

    .line 948
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListActionBarController:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->removeContactLookupListener()V

    .line 928
    :cond_3
    return-void

    .line 935
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftAsync(Lcom/sonyericsson/conversations/ui/Composer;Z)V

    goto :goto_0
.end method

.method public onPickContactsForGroupChat()V
    .locals 3

    .prologue
    .line 1300
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getJoynContactPicker(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1301
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInvitationFragment:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    .line 1302
    const/16 v2, 0x84

    .line 1301
    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1299
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isMsgListContentAreaVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 888
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 848
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSaveInstanceStateAlreadyCalled:Z

    .line 849
    iput-boolean v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    .line 851
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 852
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 853
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/settings/SettingsManager;->currentDefaultSmsPackage()Ljava/lang/String;

    move-result-object v2

    .line 854
    .local v2, "currentDefaultSmsPackage":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hasDefaultSmsPackageChanged(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 855
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setLastKnownDefaultSmsPackage(Ljava/lang/String;)V

    .line 856
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isMsgListContentAreaVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v4, :cond_1

    .line 857
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isAdded()Z

    move-result v4

    .line 856
    if-eqz v4, :cond_1

    .line 858
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v1

    .line 859
    .local v1, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    if-ne v4, v5, :cond_0

    .line 861
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 862
    invoke-interface {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v5

    .line 861
    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v3

    .line 863
    .local v3, "updatedConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-direct {p0, v6, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->refreshMsgList(ZLcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 865
    .end local v3    # "updatedConversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 866
    const v5, 0x7f0b0236

    .line 865
    invoke-static {v4, v5, v6}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 869
    .end local v1    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 870
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->reloadData()V

    .line 875
    .end local v2    # "currentDefaultSmsPackage":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isMsgListContentAreaVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 876
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->setActiveConversationVisibility(Z)V

    .line 877
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v4, :cond_3

    .line 878
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mAttachmentBarFragment:Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 883
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->showXperiaTransferFooter()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 884
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->xtmListener:Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;

    invoke-static {v4}, Lcom/sonymobile/conversations/util/XtmTransferUtil;->fetchXtmStatusAndUpdateFooter(Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;)V

    .line 847
    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1534
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSaveInstanceStateAlreadyCalled:Z

    .line 1541
    if-eqz p1, :cond_1

    .line 1542
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1543
    const-string/jumbo v1, "conversation_id"

    .line 1544
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v2

    .line 1543
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1547
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isConvListContentAreaVisible()Z

    move-result v0

    .line 1548
    .local v0, "convlistVisible":Z
    const-string/jumbo v1, "ConvListVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1549
    const-string/jumbo v1, "IsConvListInHistory"

    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsConvListVisibleInHistory:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1533
    .end local v0    # "convlistVisible":Z
    :cond_1
    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    .prologue
    .line 1323
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethodandClearTextFocus(Z)V

    .line 1322
    return-void
.end method

.method public onSearchViewExpand()V
    .locals 2

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setMenuVisibleFlag(Z)V

    .line 1267
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1263
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 786
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v0

    .line 787
    .local v0, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v0, :cond_0

    .line 788
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$12;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$12;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonymobile/jms/environment/ImEnvironmentApi;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 795
    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mApiConnectionStatusListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;

    .line 796
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mApiConnectionStatusListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->registerImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 798
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->registerJoynListeners()V

    .line 784
    return-void
.end method

.method public onStartDeleteConversations()V
    .locals 1

    .prologue
    .line 1221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 1220
    return-void
.end method

.method public onStartDeleteSeveralMessages()V
    .locals 1

    .prologue
    .line 1258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 1259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 1256
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 953
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mApiConnectionStatusListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;

    if-eqz v0, :cond_0

    .line 954
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v0

    .line 955
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mApiConnectionStatusListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;

    .line 954
    invoke-interface {v0, v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->unregisterImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 956
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mApiConnectionStatusListener:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$ApiConnectionStatusListener;

    .line 958
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->unregisterJoynListeners()V

    .line 960
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 952
    :cond_1
    return-void
.end method

.method public onTrimMemory(Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;)V
    .locals 2
    .param p1, "level"    # Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    .prologue
    .line 4200
    invoke-static {}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-getcom_sonyericsson_conversations_memory_LowMemoryManager$OnTrimMemoryLevelSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4199
    :cond_0
    :goto_0
    return-void

    .line 4202
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isContentEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4203
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setDirty(Z)V

    .line 4204
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftSync(Lcom/sonyericsson/conversations/ui/Composer;Z)V

    goto :goto_0

    .line 4200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onWriteNewMessage()V
    .locals 3

    .prologue
    .line 1037
    const-wide/16 v0, -0x1

    .line 1038
    sget-object v2, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 1036
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/conversation/GenericConversationId;->fromThreadIdAndImConversationId(JLcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onConversationOpen(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    .line 1035
    return-void
.end method

.method public saveDraftSync(Lcom/sonyericsson/conversations/ui/Composer;Z)V
    .locals 1
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p2, "popupToast"    # Z

    .prologue
    .line 2934
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft(Lcom/sonyericsson/conversations/ui/Composer;ZZ)V

    .line 2933
    return-void
.end method

.method protected tryToRefreshJoynCapabilities(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 2
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 1159
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImPermissionApi()Lcom/sonymobile/jms/permission/ImPermissionApi;

    move-result-object v0

    .line 1161
    .local v0, "imUsecasePermissionApi":Lcom/sonymobile/jms/permission/ImPermissionApi;
    if-nez v0, :cond_0

    .line 1162
    return-void

    .line 1164
    :cond_0
    invoke-interface {v0, p1}, Lcom/sonymobile/jms/permission/ImPermissionApi;->tryToRequestUpdatedImPermissions(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    .line 1158
    return-void
.end method
