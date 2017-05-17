.class public Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
.super Landroid/app/ListFragment;
.source "CallLogDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$OnPositionChangeListener;
.implements Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;
.implements Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$onSuccessfullyFetchedContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogExtensionsContentObserver;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I = null

.field private static final CALL_DETAILS_INVALID:I = 0x1

.field private static final CONFIGURATION_STATE_INDEX:I = 0x1

.field private static final DATA_CHANNEL_STATE_INDEX:I = 0x2

.field private static final HAS_CONTENT_COLUMN_INDEX:I = 0x1

.field private static final KEY_LIST_INDEX:Ljava/lang/String; = "KeyListIndex"

.field private static final KEY_LIST_TOP_POSITION:Ljava/lang/String; = "KeyListTopPosition"

.field private static final NOTIFICATION_CHANNEL_STATE_INDEX:I = 0x3

.field private static final PREPARE_CALL_VIEW_TAG:Ljava/lang/String; = "PrepareCallTag"

.field private static final SETTINGS_URI_INDEX:I = 0x4

.field private static final SOURCE_PACKAGE_COLUMN_INDEX:I = 0x0

.field public static final TAG:Ljava/lang/String;

.field private static final TEXT_WIDTH_OFFSET:F = 0.72f

.field private static final VOICEMAIL_ACCESS_URI_INDEX:I = 0x5

.field private static final VOICEMAIL_CONTENTSTATUS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final VOICEMAIL_CONTENT_PROJECTION:[Ljava/lang/String;

.field private mActionEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mActionView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/widget/CursorAdapter;

.field private mAsyncTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;

.field private mBlackScreenFragment:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;

.field private mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

.field private mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

.field private final mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

.field private mCapabilityDiscoverer:Ljava/lang/Object;

.field private mContactUri:Landroid/net/Uri;

.field private mContentObserver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogExtensionsContentObserver;

.field private mDualSimIsEnabled:Z

.field private mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsContentInVoicemail:Z

.field private mIsDualPane:Z

.field private mLabel:Ljava/lang/String;

.field private mLastListIndex:I

.field private mLastTopPosition:I

.field private mListener:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;

.field private mPrepareCallIcon:Landroid/widget/ImageView;

.field private mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

.field public mRecentlyUsedSim:I

.field private mRequestCapabilities:Z

.field private mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

.field private mVoicemailOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Landroid/widget/CursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/CallDetail;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mDualSimIsEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLastListIndex:I

    return v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLastTopPosition:I

    return v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPrepareCallIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mRequestCapabilities:Z

    return v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->values()[Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->DISABLED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->HIDDEN:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->LIMITED:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

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

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Landroid/widget/CursorAdapter;)Landroid/widget/CursorAdapter;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAdapter:Landroid/widget/CursorAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLastListIndex:I

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mRequestCapabilities:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->setupCallDetails()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->addActionViews()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->addCallsHistoryHeader(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->checkContentOfVoicemail()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getCachedCapabilitiesAndShowPrepareCallButton()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->initFragment()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->queryPhoneNumberInfo()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->removeHeaderViews()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->setupActionEntries(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->showErrorMessage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    .line 143
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 144
    const-string/jumbo v1, "source_package"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "configuration_state"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "data_channel_state"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "notification_channel_state"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "settings_uri"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "voicemail_access_uri"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 143
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->VOICEMAIL_CONTENTSTATUS_PROJECTION:[Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 131
    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLastListIndex:I

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "source_package"

    aput-object v1, v0, v3

    const-string/jumbo v1, "has_content"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 134
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->VOICEMAIL_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 202
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mIsContentInVoicemail:Z

    .line 224
    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mRecentlyUsedSim:I

    .line 226
    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mDualSimIsEnabled:Z

    .line 233
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V

    .line 232
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    .line 108
    return-void
.end method

.method private addActionViews()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1150
    const/4 v0, 0x0

    .line 1151
    .local v0, "actionView":Landroid/view/View;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mActionEntries:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v0    # "actionView":Landroid/view/View;
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .line 1153
    .local v2, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    move-object v1, p0

    .line 1157
    .local v1, "actionViewClickListener":Landroid/view/View$OnClickListener;
    iget-object v4, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    sget-object v5, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    if-ne v4, v5, :cond_1

    .line 1158
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const v6, 0x7f0400b7

    invoke-virtual {v4, v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1159
    .local v0, "actionView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1160
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-boolean v4, v4, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaybackInit:Z

    if-eqz v4, :cond_0

    .line 1161
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->dismissPlaybackOverlay(Landroid/view/View;)V

    .line 1162
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-boolean v4, v4, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaying:Z

    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->initVoicemailPlayback(Landroid/view/View;Z)V

    .line 1166
    const/4 v1, 0x0

    .line 1180
    .end local v1    # "actionViewClickListener":Landroid/view/View$OnClickListener;
    :cond_0
    :goto_1
    iget-boolean v4, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->enabled:Z

    if-eqz v4, :cond_4

    .line 1181
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1186
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1169
    .end local v0    # "actionView":Landroid/view/View;
    .restart local v1    # "actionViewClickListener":Landroid/view/View$OnClickListener;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 1170
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const v6, 0x7f040013

    .line 1169
    invoke-virtual {v4, v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1171
    .restart local v0    # "actionView":Landroid/view/View;
    iget-object v4, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    sget-object v5, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    if-eq v4, v5, :cond_2

    .line 1172
    iget-object v4, v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    sget-object v5, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VIDEO_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    if-ne v4, v5, :cond_3

    .line 1173
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->fillCallActionView(Landroid/view/View;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;)V

    .line 1177
    :goto_3
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mActionView:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1175
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->fillActionView(Landroid/view/View;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;)V

    goto :goto_3

    .line 1183
    .end local v1    # "actionViewClickListener":Landroid/view/View$OnClickListener;
    :cond_4
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 1149
    .end local v0    # "actionView":Landroid/view/View;
    .end local v2    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :cond_5
    return-void
.end method

.method private addBlackScreenFragment()V
    .locals 4

    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1635
    .local v0, "childFragmentManager":Landroid/app/FragmentManager;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->TAG:Ljava/lang/String;

    .line 1634
    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mBlackScreenFragment:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;

    .line 1636
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mBlackScreenFragment:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;

    if-nez v2, :cond_0

    .line 1637
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;

    invoke-direct {v2}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mBlackScreenFragment:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;

    .line 1638
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1640
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mBlackScreenFragment:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1641
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1632
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private addCallsHistoryHeader(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1198
    if-nez p1, :cond_0

    return-void

    .line 1201
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 1200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 1202
    .local v0, "isAnyTypeOfVoicemail":Z
    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 1203
    :cond_1
    const v1, 0x7f0900a8

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->addSeparatorView(I)V

    .line 1197
    :goto_1
    return-void

    .line 1200
    .end local v0    # "isAnyTypeOfVoicemail":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "isAnyTypeOfVoicemail":Z
    goto :goto_0

    .line 1205
    :cond_3
    const v1, 0x7f0900a7

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->addSeparatorView(I)V

    goto :goto_1
.end method

.method private addSeparatorView(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    const/4 v4, 0x0

    .line 1215
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 1216
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1215
    const v3, 0x7f04001d

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1217
    .local v0, "separator":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1218
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1219
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    return-void
.end method

.method private cancelAsyncTask()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAsyncTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAsyncTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAsyncTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->cancel(Z)Z

    .line 468
    :cond_0
    return-void
.end method

.method private checkContentOfVoicemail()V
    .locals 5

    .prologue
    .line 1572
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v3

    .line 1573
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->VOICEMAIL_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 1572
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->queryVoicemailContent(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1575
    .local v0, "cursorVoicemail":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->moveToFirst(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1576
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->hasAudio(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1578
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mIsContentInVoicemail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1597
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1598
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1601
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkContentOfVoicemail():current voicemail content is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1602
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mIsContentInVoicemail:Z

    .line 1601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    return-void

    .line 1581
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 1582
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getSourcePackage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1583
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->VOICEMAIL_CONTENTSTATUS_PROJECTION:[Ljava/lang/String;

    .line 1581
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->queryVoicemailStatus(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1586
    .local v1, "cursorVoicemailStatus":Landroid/database/Cursor;
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getVoicemailSourceStatus(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mVoicemailOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1588
    if-eqz v1, :cond_0

    .line 1589
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1596
    .end local v1    # "cursorVoicemailStatus":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 1597
    if-eqz v0, :cond_3

    .line 1598
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1596
    :cond_3
    throw v2

    .line 1587
    .restart local v1    # "cursorVoicemailStatus":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    .line 1588
    if-eqz v1, :cond_4

    .line 1589
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1587
    :cond_4
    throw v2

    .line 1594
    .end local v1    # "cursorVoicemailStatus":Landroid/database/Cursor;
    :cond_5
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "could not get valid cursor."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private destroyVoicemailPresenter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->onPause()V

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->onDestroy()V

    .line 478
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    .line 479
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mVoicemailOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 474
    :cond_0
    return-void
.end method

.method private dismissPlaybackOverlay(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 698
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 702
    const v0, 0x7f0e01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    const v0, 0x7f0e01d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaybackInit:Z

    .line 695
    return-void
.end method

.method private fillActionView(Landroid/view/View;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "entry"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .prologue
    .line 1229
    const v3, 0x7f0e004f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1230
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 1231
    iget v3, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1235
    :goto_0
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1236
    .local v2, "text":Landroid/widget/TextView;
    iget-object v3, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1237
    iget v3, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->textId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1241
    :goto_1
    const v3, 0x7f0e0051

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1242
    .local v1, "secondRow":Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "fillActionView set tag"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1228
    return-void

    .line 1233
    .end local v1    # "secondRow":Landroid/view/View;
    .end local v2    # "text":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1239
    .restart local v2    # "text":Landroid/widget/TextView;
    :cond_1
    iget-object v3, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private fillCallActionView(Landroid/view/View;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "entry"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .prologue
    const/4 v10, 0x0

    .line 1255
    const/4 v3, 0x0

    .line 1256
    .local v3, "number":Ljava/lang/String;
    const v8, 0x7f0e004f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1257
    .local v0, "iconView":Landroid/widget/ImageView;
    const v8, 0x1020014

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1258
    .local v7, "textView":Landroid/widget/TextView;
    const v8, 0x7f0e0051

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1259
    .local v6, "secondRow":Landroid/view/View;
    const v8, 0x7f0e0052

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1260
    .local v2, "labelView":Landroid/widget/TextView;
    const v8, 0x7f0e0053

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1262
    .local v5, "numberView":Landroid/widget/TextView;
    iget v8, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconId:I

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1263
    iget-object v8, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->callText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VIDEO_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    iget-object v9, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    if-ne v8, v9, :cond_0

    .line 1266
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->setupVideoCallView(Landroid/view/View;)V

    .line 1269
    :cond_0
    const/4 v4, 0x0

    .line 1270
    .local v4, "numberShown":Z
    iget-object v8, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->number:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1271
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->number:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1272
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1273
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1274
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumberForAccessibility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1276
    const/4 v4, 0x1

    .line 1280
    .end local v3    # "number":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 1281
    .local v1, "labelShown":Z
    iget-object v8, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->label:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1282
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1288
    :goto_0
    if-nez v4, :cond_2

    if-eqz v1, :cond_3

    .line 1289
    :cond_2
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1292
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->isCallerIdSupported(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1293
    iget-object v8, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->number:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1297
    :cond_4
    :goto_1
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    iget-object v9, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1299
    const v8, 0x7f0e0055

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPrepareCallIcon:Landroid/widget/ImageView;

    .line 1300
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1301
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPrepareCallIcon:Landroid/widget/ImageView;

    const-string/jumbo v9, "PrepareCallTag"

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1302
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPrepareCallIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getCachedCapabilitiesAndShowPrepareCallButton()V

    .line 1307
    :cond_5
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1254
    return-void

    .line 1284
    :cond_6
    iget-object v8, p2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    const/4 v1, 0x1

    goto :goto_0

    .line 1294
    :cond_7
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;

    invoke-direct {v8, p0, p0, p2, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;Landroid/view/View;)V

    new-array v9, v10, [Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallerIdLookupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private findHeaderView(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;)Landroid/view/View;
    .locals 5
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .prologue
    const/4 v4, 0x0

    .line 686
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHeaderViews:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "view$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 687
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .line 688
    .local v0, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    if-ne v3, p1, :cond_0

    .line 689
    return-object v1

    .line 692
    .end local v0    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method private getCachedCapabilitiesAndShowPrepareCallButton()V
    .locals 3

    .prologue
    .line 1646
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->getCachedCapability(Ljava/lang/String;)Z

    move-result v0

    .line 1647
    .local v0, "hasCapabilities":Z
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPrepareCallIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1648
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPrepareCallIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$2;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1645
    :cond_0
    return-void
.end method

.method private getSourcePackage(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "voicemailCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 1513
    if-eqz p1, :cond_0

    .line 1514
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1516
    :cond_0
    return-object v0
.end method

.method private getVoicemailSourceStatus(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1521
    const/4 v2, 0x0

    .line 1522
    .local v2, "overallState":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    if-nez p1, :cond_0

    .line 1523
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getVoicemailsourceStatus() no status record now!"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    return-object v2

    .line 1526
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVoicemailsourceStatus() current status record is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1532
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_NOACTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 1534
    .end local v2    # "overallState":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    .local v1, "maxAction":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1536
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1537
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1538
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1535
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper;->getOverallState(III)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    move-result-object v2

    .line 1539
    .local v2, "overallState":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVoicemailsourceStatus() overallState is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    if-eqz v2, :cond_1

    .line 1542
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->getAction()Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    move-result-object v1

    .line 1544
    const/4 v0, 0x0

    .line 1545
    .local v0, "actionUri":Landroid/net/Uri;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    if-ne v1, v3, :cond_5

    .line 1547
    const/4 v3, 0x5

    .line 1546
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1548
    .local v0, "actionUri":Landroid/net/Uri;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVoicemailsourceStatus() call uir is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    .end local v0    # "actionUri":Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 1557
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->setActionUri(Landroid/net/Uri;)V

    .line 1559
    :cond_3
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    if-ne v1, v3, :cond_1

    .line 1561
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getVoicemailsourceStatus() STATUS_ACTION_CALL branch"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    .end local v2    # "overallState":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    :cond_4
    return-object v2

    .line 1551
    .local v0, "actionUri":Landroid/net/Uri;
    .restart local v2    # "overallState":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    :cond_5
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CONFIGURE:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    if-ne v1, v3, :cond_2

    .line 1552
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1553
    .local v0, "actionUri":Landroid/net/Uri;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVoicemailsourceStatus() settig uir is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getVoicemailUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 1494
    const/4 v0, 0x0

    .line 1495
    .local v0, "retUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->hasVoicemail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 1496
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1500
    .end local v0    # "retUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoicemailUri() retUri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    return-object v0

    .line 1498
    .restart local v0    # "retUri":Landroid/net/Uri;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "retUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private hasAudio(Landroid/database/Cursor;)Z
    .locals 3
    .param p1, "voicemailCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1505
    if-eqz p1, :cond_1

    .line 1506
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1508
    :cond_1
    return v1
.end method

.method private initFragment()V
    .locals 7

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isDataValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->destroyVoicemailPresenter()V

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->hasVoicemail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 439
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->cancelAsyncTask()V

    .line 450
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAsyncTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;

    .line 451
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAsyncTask:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 433
    return-void

    .line 441
    :cond_2
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v2

    .line 442
    iget-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mIsDualPane:Z

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-boolean v5, v3, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaybackThroughSpeakerPhone:Z

    move-object v3, p0

    move-object v6, p0

    .line 441
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$OnPositionChangeListener;ZZLcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$onSuccessfullyFetchedContentListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    .line 443
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mIsDualPane:Z

    if-nez v0, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->addBlackScreenFragment()V

    .line 446
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mBlackScreenFragment:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setProximitySensorAware(Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;)V

    goto :goto_0
.end method

.method private initVoicemailPlayback(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startPlaybackAfterInit"    # Z

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mVoicemailOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mIsContentInVoicemail:Z

    .line 1615
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget v4, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailPlaybackPostition:I

    move-object v2, p1

    move v5, p2

    .line 1614
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->fillActionView(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;Landroid/view/View;ZIZ)V

    .line 1612
    :cond_0
    return-void
.end method

.method private notifyVideoCallChange()V
    .locals 3

    .prologue
    .line 609
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VIDEO_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->findHeaderView(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;)Landroid/view/View;

    move-result-object v0

    .line 611
    .local v0, "videoCallView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 612
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to notify ViLTE change since video call entry header is null!"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void

    .line 616
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->setupVideoCallView(Landroid/view/View;)V

    .line 608
    return-void
.end method

.method private queryPhoneNumberInfo()V
    .locals 28

    .prologue
    .line 759
    const/16 v21, 0x0

    .line 760
    .local v21, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContactUri:Landroid/net/Uri;

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    .line 763
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 764
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    .line 765
    const-string/jumbo v2, "contact_id"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "display_name"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    .line 767
    .local v4, "projection":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 768
    .local v15, "COLUMN_INDEX_CONTACT_ID":I
    const/16 v18, 0x1

    .line 769
    .local v18, "COLUMN_INDEX_NAME":I
    const-string/jumbo v5, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 771
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    .line 775
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 776
    const/4 v7, 0x0

    .line 775
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 777
    .local v21, "cursor":Landroid/database/Cursor;
    if-eqz v21, :cond_2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 778
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 779
    .local v26, "personId":J
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v26

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContactUri:Landroid/net/Uri;

    .line 781
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 782
    .local v24, "name":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v0, v24

    iput-object v0, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "COLUMN_INDEX_CONTACT_ID":I
    .end local v24    # "name":Ljava/lang/String;
    .end local v26    # "personId":J
    :cond_0
    :goto_0
    if-eqz v21, :cond_1

    .line 861
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 758
    :cond_1
    return-void

    .line 786
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v15    # "COLUMN_INDEX_CONTACT_ID":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->sipName:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string/jumbo v2, ""

    :goto_1
    iput-object v2, v3, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 859
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "COLUMN_INDEX_CONTACT_ID":I
    .end local v18    # "COLUMN_INDEX_NAME":I
    .end local v21    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 860
    if-eqz v21, :cond_3

    .line 861
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 859
    :cond_3
    throw v2

    .line 786
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v15    # "COLUMN_INDEX_CONTACT_ID":I
    .restart local v18    # "COLUMN_INDEX_NAME":I
    .restart local v21    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->sipName:Ljava/lang/String;

    goto :goto_1

    .line 789
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v15    # "COLUMN_INDEX_CONTACT_ID":I
    .end local v18    # "COLUMN_INDEX_NAME":I
    .local v21, "cursor":Landroid/database/Cursor;
    :cond_5
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    .line 790
    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "display_name"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "type"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    .line 791
    const-string/jumbo v2, "label"

    const/4 v3, 0x3

    aput-object v2, v4, v3

    .line 793
    .restart local v4    # "projection":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 794
    .local v16, "COLUMN_INDEX_ID":I
    const/16 v18, 0x1

    .line 795
    .restart local v18    # "COLUMN_INDEX_NAME":I
    const/16 v19, 0x2

    .line 796
    .local v19, "COLUMN_INDEX_TYPE":I
    const/16 v17, 0x3

    .line 798
    .local v17, "COLUMN_INDEX_LABEL":I
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 798
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 800
    .local v8, "phoneUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 801
    const/4 v12, 0x0

    move-object v9, v4

    .line 800
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 803
    .local v21, "cursor":Landroid/database/Cursor;
    if-eqz v21, :cond_8

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 804
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 805
    .restart local v26    # "personId":J
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v26

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContactUri:Landroid/net/Uri;

    .line 807
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 808
    .restart local v24    # "name":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v0, v24

    iput-object v0, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->makeCnapUpdatable(Landroid/content/Context;Ljava/lang/String;)V

    .line 812
    :cond_6
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 813
    .local v25, "type":I
    if-ltz v25, :cond_7

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 814
    move/from16 v0, v25

    invoke-static {v2, v0, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLabel:Ljava/lang/String;

    .line 847
    .end local v24    # "name":Ljava/lang/String;
    .end local v25    # "type":I
    .end local v26    # "personId":J
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    .line 847
    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 849
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v23

    .line 851
    .local v23, "isVisualVoicemail":Z
    if-eqz v23, :cond_b

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 852
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 819
    .end local v23    # "isVisualVoicemail":Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v3, v3, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    .line 819
    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/CnapUtil;->isCnapUpdatable(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v22

    .line 821
    .local v22, "isUpdated":Z
    if-nez v22, :cond_7

    .line 822
    const/16 v20, 0x0

    .line 825
    .local v20, "cnapCursor":Landroid/database/Cursor;
    :try_start_3
    const-string/jumbo v2, "content://com.sonyericsson.providers.cnap/cnaprecords"

    .line 824
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 826
    .local v10, "CONTENT_URI":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 827
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    .line 828
    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    aput-object v2, v11, v3

    .line 829
    const-string/jumbo v12, "number=?"

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v13, v3

    .line 831
    const/4 v14, 0x0

    .line 826
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 833
    .local v20, "cnapCursor":Landroid/database/Cursor;
    if-eqz v20, :cond_9

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 834
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 835
    .restart local v24    # "name":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v0, v24

    iput-object v0, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 840
    .end local v24    # "name":Ljava/lang/String;
    :cond_9
    if-eqz v20, :cond_7

    .line 841
    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 839
    .end local v10    # "CONTENT_URI":Landroid/net/Uri;
    .end local v20    # "cnapCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    .line 840
    if-eqz v20, :cond_a

    .line 841
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 839
    :cond_a
    throw v2

    .line 855
    .end local v22    # "isUpdated":Z
    .restart local v23    # "isVisualVoicemail":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private removeHeaderViews()V
    .locals 3

    .prologue
    .line 459
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHeaderViews:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "v$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 461
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0

    .line 463
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 464
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mActionView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 458
    .end local v1    # "v$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private saveListViewPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 425
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLastListIndex:I

    .line 426
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 427
    .local v1, "v":Landroid/view/View;
    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLastTopPosition:I

    .line 428
    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLastTopPosition:I

    .line 423
    :cond_0
    return-void
.end method

.method private setupActionEntries(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 984
    const/4 v6, 0x0

    .line 985
    .local v6, "callText":Ljava/lang/String;
    const/4 v10, 0x1

    .line 986
    .local v10, "isVisibleNumber":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v9

    .line 987
    .local v9, "isSipNumber":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 987
    invoke-static/range {v17 .. v18}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 989
    .local v11, "isVoiceMailNumber":Z
    const/4 v15, 0x0

    .line 990
    .local v15, "useCallerIdName":Z
    const/4 v7, 0x0

    .line 992
    .local v7, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .local v4, "actionEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 997
    const/4 v15, 0x1

    .line 998
    const v17, 0x7f0900a9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1005
    .local v6, "callText":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->numberPresentation:I

    move/from16 v18, v0

    .line 1005
    invoke-static/range {v17 .. v18}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isNotCallBackNumber(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1007
    const/4 v10, 0x0

    .line 1010
    :cond_0
    const-string/jumbo v17, "skype:"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 1011
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v16

    .line 1013
    .local v16, "voipIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 1014
    const/16 v18, 0x40

    .line 1013
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 1015
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v13, :cond_1

    .line 1017
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .end local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V

    .line 1018
    .local v7, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    .line 1019
    iput-object v6, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->callText:Ljava/lang/String;

    .line 1020
    iput-boolean v15, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->useCallerIdName:Z

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->label:Ljava/lang/String;

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->number:Ljava/lang/String;

    .line 1023
    const v17, 0x7f0200a8

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconId:I

    .line 1024
    sget-object v17, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 1025
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    .end local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    .end local v13    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "voipIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V

    .line 1136
    .restart local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->number:Ljava/lang/String;

    .line 1137
    const v17, 0x7f09009a

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->textId:I

    .line 1138
    const v17, 0x7f0200c2

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconId:I

    .line 1139
    sget-object v17, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->DELETE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 1140
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mActionEntries:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1143
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mActionEntries:Ljava/util/ArrayList;

    .line 983
    return-void

    .line 1000
    .local v6, "callText":Ljava/lang/String;
    .local v7, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :cond_2
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    .line 1001
    .local v5, "bidiFormatter":Landroid/text/BidiFormatter;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    .line 1001
    const v18, 0x7f090097

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "callText":Ljava/lang/String;
    goto/16 :goto_0

    .line 1027
    .end local v5    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_3
    if-eqz v10, :cond_11

    .line 1029
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .end local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V

    .line 1031
    .local v7, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailUri(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 1033
    const/16 v18, 0x0

    .line 1032
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    .line 1045
    :cond_4
    :goto_2
    iput-object v6, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->callText:Ljava/lang/String;

    .line 1046
    iput-boolean v15, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->useCallerIdName:Z

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->label:Ljava/lang/String;

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->number:Ljava/lang/String;

    .line 1049
    const v17, 0x7f02003c

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconId:I

    .line 1050
    sget-object v17, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 1051
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .end local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V

    .line 1055
    .restart local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    .line 1056
    const v17, 0x7f09036f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->callText:Ljava/lang/String;

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->label:Ljava/lang/String;

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->number:Ljava/lang/String;

    .line 1059
    const v17, 0x7f02007a

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconId:I

    .line 1060
    sget-object v17, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VIDEO_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 1061
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->hasVoicemail()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1065
    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1072
    :cond_5
    :goto_3
    if-nez v9, :cond_6

    if-eqz v11, :cond_c

    .line 1082
    :cond_6
    :goto_4
    if-nez v11, :cond_7

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContactUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 1085
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .end local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V

    .line 1086
    .restart local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v18, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContactUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    .line 1087
    const v17, 0x7f09006c

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->textId:I

    .line 1088
    const v17, 0x7f0200e9

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconId:I

    .line 1089
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->hasEnrichedCalls([I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1109
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1110
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContactUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContactUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 1111
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->buildContactLookupUri(J)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1117
    :goto_6
    const-string/jumbo v17, "com.sonymobile.callitems.EXTRA_CALLS_IDS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1119
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .end local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V

    .line 1120
    .restart local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    const v17, 0x7f09035d

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->textId:I

    .line 1121
    const v17, 0x7f02003b

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconId:I

    .line 1122
    iput-object v8, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    .line 1123
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->setupCapabilityActionEntries(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1035
    :cond_9
    if-eqz v9, :cond_a

    const-string/jumbo v14, "sip"

    .line 1036
    .local v14, "scheme":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v14, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1037
    .local v12, "numberUri":Landroid/net/Uri;
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v12, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    .line 1039
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mDualSimIsEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1040
    iget-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    const-string/jumbo v18, "preferred_subscription"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mRecentlyUsedSim:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1035
    .end local v12    # "numberUri":Landroid/net/Uri;
    .end local v14    # "scheme":Ljava/lang/String;
    :cond_a
    const-string/jumbo v14, "tel"

    .restart local v14    # "scheme":Ljava/lang/String;
    goto :goto_7

    .line 1067
    .end local v14    # "scheme":Ljava/lang/String;
    :cond_b
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .end local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V

    .line 1068
    .restart local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    sget-object v17, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 1069
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1072
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isSmsAllowed(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1074
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .end local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V

    .line 1075
    .restart local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSendMessageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    .line 1076
    const v17, 0x7f090096

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->textId:I

    .line 1077
    const v17, 0x7f0200d7

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconId:I

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->enabled:Z

    .line 1079
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1092
    :cond_d
    if-eqz v9, :cond_f

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    .line 1092
    if-eqz v17, :cond_f

    .line 1094
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->getUriName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    .line 1097
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1096
    invoke-static/range {v17 .. v18}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getAddToContactsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1098
    .restart local v8    # "intent":Landroid/content/Intent;
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .end local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V

    .line 1099
    .restart local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    iput-object v8, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    .line 1100
    const v17, 0x7f090099

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->textId:I

    .line 1101
    const v17, 0x7f0200ad

    move/from16 v0, v17

    iput v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconId:I

    .line 1102
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1115
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1114
    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->buildPhoneNumberLookupUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_6

    .line 1127
    .end local v8    # "intent":Landroid/content/Intent;
    .local v7, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->hasVoicemail()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1128
    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1130
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .end local v7    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    invoke-direct {v7}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V

    .line 1131
    .local v7, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    sget-object v17, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 1132
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private setupCallDetails()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 714
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-boolean v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callInformationExist:Z

    if-nez v1, :cond_2

    .line 721
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 722
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 724
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 725
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "number"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 726
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 724
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 727
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 730
    .local v6, "callsId":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 731
    const/4 v3, 0x0

    aput v6, v2, v3

    .line 730
    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    .line 733
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 734
    .local v8, "number":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    if-nez v8, :cond_0

    const-string/jumbo v8, ""

    .end local v8    # "number":Ljava/lang/String;
    :cond_0
    iput-object v8, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    .end local v6    # "callsId":I
    :cond_1
    if-eqz v7, :cond_2

    .line 738
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 739
    const/4 v7, 0x0

    .line 744
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->numberPresentation:I

    if-ne v1, v9, :cond_3

    .line 745
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    .line 744
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 746
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    if-nez v1, :cond_6

    .line 748
    :cond_4
    return v10

    .line 736
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    .line 737
    if-eqz v7, :cond_5

    .line 738
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 739
    const/4 v7, 0x0

    .line 736
    :cond_5
    throw v1

    .line 747
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    array-length v1, v1

    if-eqz v1, :cond_4

    .line 751
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 752
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    const-string/jumbo v2, "tel:"

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    .line 754
    :cond_7
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iput-boolean v9, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callInformationExist:Z

    .line 755
    return v9
.end method

.method private setupCapabilityActionEntries(Ljava/util/ArrayList;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 872
    .local p1, "actionEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;>;"
    const/4 v9, 0x0

    .line 875
    .local v9, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCapabilityDiscoverer:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 876
    new-instance v26, Ljava/lang/Exception;

    const-string/jumbo v27, "No Capability Discoverer is available"

    invoke-direct/range {v26 .. v27}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    .end local v9    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :catch_0
    move-exception v8

    .line 974
    .local v8, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v26, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v27, "Exception in adding capability actions"

    invoke-static/range {v26 .. v27}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 879
    .restart local v9    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCapabilityDiscoverer:Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getCapabilities"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    .line 880
    const-class v29, Landroid/content/Context;

    const/16 v30, 0x0

    aput-object v29, v28, v30

    .line 879
    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 881
    .local v21, "method":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCapabilityDiscoverer:Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 883
    .local v22, "myCapabilities":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCapabilityDiscoverer:Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getCapabilities"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    const-class v29, Landroid/content/Context;

    const/16 v30, 0x0

    aput-object v29, v28, v30

    .line 884
    const-class v29, Ljava/lang/String;

    const/16 v30, 0x1

    aput-object v29, v28, v30

    .line 883
    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCapabilityDiscoverer:Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aput-object v28, v27, v29

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 889
    .local v5, "contactCapabilities":Ljava/lang/Object;
    if-eqz v22, :cond_0

    if-eqz v5, :cond_0

    .line 891
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getImSessionCapability"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 892
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    .line 894
    .local v24, "myImCapability":Z
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getFileTransferCapability"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 895
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 897
    .local v23, "myFTCapability":Z
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getImSessionCapability"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 898
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 900
    .local v7, "contactImCapability":Z
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getFileTransferCapability"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 901
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Boolean;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 904
    .local v6, "contactFTCapability":Z
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getCapabilityResources"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 905
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 908
    .local v4, "capabilityAppRes":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 909
    const/4 v3, 0x0

    .line 911
    .local v3, "applicationRes":Landroid/content/res/Resources;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getPackageName"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 912
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 913
    .local v25, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 916
    .local v3, "applicationRes":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 918
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getImLabel"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 919
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 922
    .local v20, "imLabelId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getFtLabel"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 923
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 926
    .local v15, "ftLabelId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getImIntent"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 927
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 930
    .local v19, "imIntent":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getFtIntent"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 931
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 934
    .local v14, "ftIntent":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getImIcon"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 935
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 938
    .local v18, "imIconId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-string/jumbo v27, "getFtIcon"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 939
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 943
    .local v13, "ftIconId":Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 942
    move/from16 v0, v26

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 944
    .local v11, "fileTransferIcon":Landroid/graphics/Bitmap;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 947
    .local v16, "imChatIcon":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 948
    .local v17, "imChatIntent":Landroid/content/Intent;
    const-string/jumbo v26, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .local v12, "fileTransferIntent":Landroid/content/Intent;
    const-string/jumbo v26, "number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    if-eqz v16, :cond_2

    if-eqz v17, :cond_2

    if-eqz v24, :cond_2

    if-eqz v7, :cond_5

    .line 956
    new-instance v10, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    invoke-direct {v10}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 957
    .end local v9    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    .local v10, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :try_start_2
    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    .line 958
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v10, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->text:Ljava/lang/String;

    .line 959
    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconBitmap:Landroid/graphics/Bitmap;

    .line 960
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    :goto_2
    if-eqz v11, :cond_3

    if-eqz v12, :cond_3

    if-eqz v23, :cond_3

    if-eqz v6, :cond_4

    .line 964
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    invoke-direct {v9}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 965
    .end local v10    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    .local v9, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :try_start_3
    iput-object v12, v9, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    .line 966
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v9, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->text:Ljava/lang/String;

    .line 967
    iput-object v11, v9, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->iconBitmap:Landroid/graphics/Bitmap;

    .line 968
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .local v9, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :cond_2
    move-object v10, v9

    .line 955
    .restart local v10    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    goto :goto_2

    .end local v9    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :cond_3
    move-object v9, v10

    .line 963
    .end local v10    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    .local v9, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    goto/16 :goto_1

    .line 973
    .end local v9    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    .restart local v10    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    .restart local v9    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    .restart local v10    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :cond_4
    move-object v9, v10

    .end local v10    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    .restart local v9    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    goto/16 :goto_1

    .local v9, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :cond_5
    move-object v10, v9

    .restart local v10    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    goto :goto_2
.end method

.method private setupVideoCallView(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v12, 0x7f02007b

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 623
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 624
    sget-object v10, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_DETAIL:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v11, v6, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    .line 625
    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContactUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    move v6, v7

    .line 623
    :goto_0
    invoke-interface {v9, v10, v11, v6}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    .line 627
    .local v0, "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    const v6, 0x7f0e004f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 628
    .local v2, "iconView":Landroid/widget/ImageView;
    const v6, 0x1020014

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 629
    .local v5, "textView":Landroid/widget/TextView;
    const v6, 0x7f0e0052

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 630
    .local v3, "labelView":Landroid/widget/TextView;
    const v6, 0x7f0e0053

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 631
    .local v4, "numberView":Landroid/widget/TextView;
    const v6, 0x7f0e004e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 633
    .local v1, "holderView":Landroid/view/View;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I

    move-result-object v6

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v9

    aget v6, v6, v9

    packed-switch v6, :pswitch_data_0

    .line 669
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;

    invoke-direct {v6, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;)V

    throw v6

    .end local v0    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .end local v1    # "holderView":Landroid/view/View;
    .end local v2    # "iconView":Landroid/widget/ImageView;
    .end local v3    # "labelView":Landroid/widget/TextView;
    .end local v4    # "numberView":Landroid/widget/TextView;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_0
    move v6, v8

    .line 625
    goto :goto_0

    .line 635
    .restart local v0    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .restart local v1    # "holderView":Landroid/view/View;
    .restart local v2    # "iconView":Landroid/widget/ImageView;
    .restart local v3    # "labelView":Landroid/widget/TextView;
    .restart local v4    # "numberView":Landroid/widget/TextView;
    .restart local v5    # "textView":Landroid/widget/TextView;
    :pswitch_0
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 636
    const v6, 0x7f02007a

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 637
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 638
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 639
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 640
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 641
    invoke-virtual {p1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 622
    :goto_1
    return-void

    .line 645
    :pswitch_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 646
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 647
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 648
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 649
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 650
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 651
    invoke-virtual {p1, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 655
    :pswitch_2
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 656
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 657
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 658
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 659
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 660
    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 661
    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 665
    :pswitch_3
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showErrorMessage()V
    .locals 3

    .prologue
    .line 1624
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900a6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1623
    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 344
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 342
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 357
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v2

    .line 358
    .local v2, "parentFragment":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 360
    :try_start_0
    move-object v0, v2

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;

    move-object v3, v0

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 363
    const-string/jumbo v5, " must implement OnCallLogDetailsEventListener listener"

    .line 362
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 367
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;

    move-object v3, v0

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 368
    :catch_1
    move-exception v1

    .line 369
    .restart local v1    # "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 370
    const-string/jumbo v5, " must implement OnCallLogDetailsEventListener listener"

    .line 369
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 503
    .local v7, "tag":Ljava/lang/Object;
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick get tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    if-eqz v7, :cond_9

    instance-of v0, v7, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    if-eqz v0, :cond_9

    move-object v6, v7

    .line 506
    check-cast v6, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;

    .line 507
    .local v6, "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    iget-object v0, v6, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    if-ne v0, v1, :cond_2

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 508
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;->isVerizonVoicemail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 510
    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;->viewVerizonVoicemail(Landroid/content/Context;Ljava/lang/String;)V

    .line 501
    .end local v6    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :cond_0
    :goto_0
    return-void

    .line 513
    .restart local v6    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->dismissPlaybackOverlay(Landroid/view/View;)V

    .line 514
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->initVoicemailPlayback(Landroid/view/View;Z)V

    goto :goto_0

    .line 516
    :cond_2
    iget-object v0, v6, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 517
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 518
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->setAllVisualVoicemailsAsRead()V

    .line 523
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iput-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isRedialed:Z

    .line 524
    const-string/jumbo v0, "android.intent.action.CALL_PRIVILEGED"

    iget-object v1, v6, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 526
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 525
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isCallingInPinnedModeAndNotify(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 527
    return-void

    .line 529
    :cond_4
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 530
    const v1, 0x7f0901cd

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 531
    const v2, 0x7f0901d9

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 532
    const-string/jumbo v3, ""

    const-wide/16 v4, 0x0

    .line 529
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 534
    :cond_5
    iget-object v0, v6, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 535
    :cond_6
    iget-object v0, v6, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;->type:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->DELETE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    if-ne v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->hasVoicemail()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailUriString:Ljava/lang/String;

    .line 538
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 543
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->callsIds:[I

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/CallDetail;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->deleteByIds([ILjava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;->onCallLogItemDeleted()V

    goto/16 :goto_0

    .line 540
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->deleteVoicemailByUri(Landroid/net/Uri;)I

    goto :goto_1

    .line 549
    .end local v6    # "entry":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
    :cond_9
    const-string/jumbo v0, "PrepareCallTag"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iput-boolean v3, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isRedialed:Z

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/holla/CallPlusIntents;->getCallComposerIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChange(Z)V
    .locals 0
    .param p1, "isVilteSupportChanged"    # Z

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->notifyVideoCallChange()V

    .line 596
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 263
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mIsDualPane:Z

    .line 267
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 269
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mActionEntries:Ljava/util/ArrayList;

    .line 271
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mActionView:Ljava/util/ArrayList;

    .line 273
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHeaderViews:Ljava/util/ArrayList;

    .line 275
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 277
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/CallDetail;

    invoke-direct {v8}, Lcom/sonyericsson/android/socialphonebook/CallDetail;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    .line 279
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogExtensionsContentObserver;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, p0, v9}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogExtensionsContentObserver;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContentObserver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogExtensionsContentObserver;

    .line 281
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v8

    iput-boolean v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mDualSimIsEnabled:Z

    .line 284
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    invoke-direct {v8, v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;)V

    iput-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .line 285
    if-nez p1, :cond_0

    .line 286
    iput-boolean v11, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mRequestCapabilities:Z

    .line 292
    :cond_0
    :try_start_0
    const-string/jumbo v8, "com.sonyericsson.appextensions.ApplicationExtensionFactory"

    .line 291
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 293
    .local v0, "appExtnFactory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "getCapabilityDiscoverer"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    .line 294
    const-class v10, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 293
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 295
    .local v2, "getCapabilityDiscoverer":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v2, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCapabilityDiscoverer:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0    # "appExtnFactory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getCapabilityDiscoverer":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz p1, :cond_1

    .line 311
    const-string/jumbo v8, "KeyListIndex"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLastListIndex:I

    .line 312
    const-string/jumbo v8, "KeyListTopPosition"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLastTopPosition:I

    .line 262
    :cond_1
    return-void

    .line 306
    :catch_0
    move-exception v5

    .line 307
    .local v5, "le":Ljava/lang/LinkageError;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v5    # "le":Ljava/lang/LinkageError;
    :catch_1
    move-exception v4

    .line 305
    .local v4, "ite":Ljava/lang/reflect/InvocationTargetException;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v4    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v7

    .line 303
    .local v7, "se":Ljava/lang/SecurityException;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    .end local v7    # "se":Ljava/lang/SecurityException;
    :catch_3
    move-exception v3

    .line 301
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    .end local v3    # "iae":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v6

    .line 299
    .local v6, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    .end local v6    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 485
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mActionEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 488
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 489
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mActionView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 491
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 493
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAdapter:Landroid/widget/CursorAdapter;

    .line 495
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 496
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;

    .line 497
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 484
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 570
    invoke-virtual {p1}, Landroid/widget/ListView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isEnrichedCall(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 578
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContactUri:Landroid/net/Uri;

    .line 577
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->buildContactLookupUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 583
    :goto_0
    const-string/jumbo v1, "com.sonymobile.callitems.EXTRA_CALLS_IDS"

    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 584
    long-to-int v3, p4

    aput v3, v2, v4

    .line 583
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 592
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 569
    return-void

    .line 581
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/CallDetail;->number:Ljava/lang/String;

    .line 580
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->buildPhoneNumberLookupUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 588
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->isVoicemailPlaying()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaying:Z

    .line 401
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    .line 402
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->isPlayingVoiceMessageThroughSpeakerPhone()Z

    move-result v1

    .line 401
    iput-boolean v1, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaybackThroughSpeakerPhone:Z

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->onPause()V

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->cancelAsyncTask()V

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContentObserver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogExtensionsContentObserver;

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContentObserver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogExtensionsContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 409
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->saveListViewPosition()V

    .line 397
    return-void
.end method

.method public onPositionChanged(I)V
    .locals 1
    .param p1, "currentPosition"    # I

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iput p1, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailPlaybackPostition:I

    .line 1628
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 377
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iput-boolean v4, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isVoicemailPlaying:Z

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->saveListViewPosition()V

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog$CallsExtensions;->CONTENT_URI:Landroid/net/Uri;

    .line 386
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mContentObserver:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogExtensionsContentObserver;

    const/4 v3, 0x1

    .line 385
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 389
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 390
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->initFragment()V

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mPresenter:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->onResume()V

    .line 376
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 350
    const-string/jumbo v0, "KeyListIndex"

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLastListIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    const-string/jumbo v0, "KeyListTopPosition"

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mLastTopPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->addListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V

    .line 320
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->connect()V

    .line 317
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 414
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->removeListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V

    .line 416
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->destroyVoicemailPresenter()V

    .line 418
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->disconnect()V

    .line 413
    :cond_0
    return-void
.end method

.method public onSuccessfullyFetchedContent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1661
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailStatus:I

    if-eq v2, v0, :cond_1

    .line 1662
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->updateVoicemailToReadByUri(Landroid/net/Uri;)I

    .line 1663
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    iput v2, v0, Lcom/sonyericsson/android/socialphonebook/CallDetail;->voicemailStatus:I

    .line 1665
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallsAdapter;->setReadState()V

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 1660
    :cond_1
    return-void
.end method

.method public onVideoCallEntityChange()V
    .locals 0

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->notifyVideoCallChange()V

    .line 601
    return-void
.end method

.method public setData(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 331
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->parseIntent(Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/CallDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallDetail:Lcom/sonyericsson/android/socialphonebook/CallDetail;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/CallDetail;->isDataValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->showErrorMessage()V

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$OnCallLogDetailsEventListener;->onCallLogDetailsSetupFailed()V

    .line 330
    :cond_0
    return-void
.end method

.method triggerCallPlusServiceInitialization(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V
    .locals 0
    .param p1, "mockConnector"    # Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 675
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .line 676
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->getCachedCapabilitiesAndShowPrepareCallButton()V

    .line 674
    return-void
.end method
