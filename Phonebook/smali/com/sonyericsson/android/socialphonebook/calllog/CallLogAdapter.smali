.class public Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;,
        Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$MessageHandler;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I = null

.field private static synthetic -com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I = null

.field private static synthetic -com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I = null

.field public static final REDRAW:I = 0x1

.field public static final START_THREAD:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAvailableTextWidth:I

.field private mBidiFormatter:Landroid/text/BidiFormatter;

.field private mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

.field private mCachedCallerIds:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

.field private mConferenceCallTypeLabel:Ljava/lang/String;

.field private mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

.field private final mDrawableAttachment:Landroid/graphics/drawable/Drawable;

.field private final mDrawableConferenceCall:Landroid/graphics/drawable/Drawable;

.field private final mDrawableHdVoiceCall:Landroid/graphics/drawable/Drawable;

.field private final mDrawableIncoming:Landroid/graphics/drawable/Drawable;

.field private final mDrawableMissed:Landroid/graphics/drawable/Drawable;

.field private final mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

.field private final mDrawablePauseVoicemail:Landroid/graphics/drawable/Drawable;

.field private final mDrawablePlayVoicemail:Landroid/graphics/drawable/Drawable;

.field private final mDrawableReadVoicemail:Landroid/graphics/drawable/Drawable;

.field private final mDrawableRegularCall:Landroid/graphics/drawable/Drawable;

.field private final mDrawableUnreadVoicemail:Landroid/graphics/drawable/Drawable;

.field private final mDrawableUrgentCall:Landroid/graphics/drawable/Drawable;

.field private final mDrawableVideoCallDisabled:Landroid/graphics/drawable/Drawable;

.field private final mDrawableVideoCallEnabled:Landroid/graphics/drawable/Drawable;

.field private mFirst:Z

.field private final mHandler:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$MessageHandler;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsCallerIdSupported:Z

.field private mLoading:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

.field private mRcsCapableNumbers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionChangeNeeded:Z

.field private mSyncCallStatusLoadInterface:Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;

.field private mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mAvailableTextWidth:I

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCachedCallerIds:Landroid/util/LruCache;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->values()[Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PAUSE:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->PLAY:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->STOP:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-com_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues:[I

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

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->values()[Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->UNKNOWN_CALL_LOG:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-com_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

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
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->TAG:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cache"    # Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;
    .param p3, "helper"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;
    .param p4, "queryCommandCreator"    # Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    const v1, 0x7f04001b

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v3, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 96
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mLoading:Z

    .line 156
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .line 159
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    .line 158
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCachedCallerIds:Landroid/util/LruCache;

    .line 171
    iput-boolean v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mSubscriptionChangeNeeded:Z

    .line 173
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$MessageHandler;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$MessageHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mHandler:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$MessageHandler;

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mRcsCapableNumbers:Ljava/util/Collection;

    .line 194
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 195
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    .line 196
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 197
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mHandler:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$MessageHandler;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->setAdapterHandler(Landroid/os/Handler;)V

    .line 201
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 202
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 204
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    .line 206
    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    .line 207
    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    .line 208
    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableReadVoicemail:Landroid/graphics/drawable/Drawable;

    .line 209
    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableUnreadVoicemail:Landroid/graphics/drawable/Drawable;

    .line 210
    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawablePlayVoicemail:Landroid/graphics/drawable/Drawable;

    .line 211
    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawablePauseVoicemail:Landroid/graphics/drawable/Drawable;

    .line 212
    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableUrgentCall:Landroid/graphics/drawable/Drawable;

    .line 213
    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableAttachment:Landroid/graphics/drawable/Drawable;

    .line 214
    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableConferenceCall:Landroid/graphics/drawable/Drawable;

    .line 215
    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableHdVoiceCall:Landroid/graphics/drawable/Drawable;

    .line 216
    const v1, 0x7f0903a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mConferenceCallTypeLabel:Ljava/lang/String;

    .line 217
    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableVideoCallEnabled:Landroid/graphics/drawable/Drawable;

    .line 219
    const v1, 0x7f020045

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableVideoCallDisabled:Landroid/graphics/drawable/Drawable;

    .line 220
    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableRegularCall:Landroid/graphics/drawable/Drawable;

    .line 221
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallerIdContact;->isCallerIdSupported(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mIsCallerIdSupported:Z

    .line 223
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 191
    return-void
.end method

.method private bindCallExtensionItem(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;ILjava/lang/String;Z)V
    .locals 3
    .param p1, "views"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;
    .param p2, "callId"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "isContact"    # Z

    .prologue
    const/4 v2, 0x0

    .line 667
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isUrgent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->urgentIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableUrgentCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 669
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->urgentIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->hasCallItems(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableAttachment:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 673
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 666
    :cond_1
    :goto_0
    return-void

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p3, p4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setVideoCallIcon(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_0

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isShowingVideoCapabilityInCallLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 678
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableRegularCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 679
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 680
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isHdVoiceCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableHdVoiceCall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 682
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindVisualVoicemailItem(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;)V
    .locals 2
    .param p1, "views"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    .prologue
    const/16 v1, 0x8

    .line 840
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 841
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberLabelHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 842
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 843
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailClickableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 844
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 839
    return-void
.end method

.method private bindVoicemailItem(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;Ljava/lang/String;)V
    .locals 4
    .param p1, "views"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;
    .param p2, "callerVoiceMailUriString"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 807
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailClickableView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 810
    return-void

    .line 813
    :cond_0
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 814
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->STOP:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    .line 816
    .local v0, "playStatus":Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    if-eqz v1, :cond_1

    .line 817
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 818
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 816
    if-eqz v1, :cond_1

    .line 820
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;->getPlayerStatus()Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;

    move-result-object v0

    .line 823
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-getcom_sonyericsson_android_socialphonebook_calllog_VoiceMailMessageStatus$VoiceMailPlayerStatusSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus$VoiceMailPlayerStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 833
    :goto_0
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailClickableView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 806
    return-void

    .line 825
    :pswitch_0
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawablePauseVoicemail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 829
    :pswitch_1
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawablePlayVoicemail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 823
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private calculateAvailableTextWidth(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;Landroid/view/View;)I
    .locals 4
    .param p1, "views"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;
    .param p2, "referentView"    # Landroid/view/View;

    .prologue
    .line 792
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    .line 793
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr v0, v2

    .line 794
    invoke-virtual {p2}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v2

    .line 793
    sub-int/2addr v0, v2

    .line 795
    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v2

    .line 793
    sub-int v2, v0, v2

    .line 796
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    iget-object v3, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->listItemType:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    if-ne v0, v3, :cond_0

    .line 797
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 793
    :goto_0
    sub-int v0, v2, v0

    .line 798
    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v2

    .line 793
    sub-int/2addr v0, v2

    .line 799
    iget-object v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    .line 793
    sub-int/2addr v0, v2

    .line 792
    add-int/2addr v0, v1

    return v0

    .line 797
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getListItemType(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/ListItemType;
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 233
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->getContactInfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    move-result-object v2

    .line 234
    .local v2, "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    const-string/jumbo v5, "name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "callerName":Ljava/lang/String;
    const-string/jumbo v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 236
    .local v0, "callId":I
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isConferenceCall(I)Z

    move-result v3

    .line 237
    .local v3, "isConference":Z
    iget-object v4, v2, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    .line 241
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_1

    .line 242
    :cond_0
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    return-object v5

    .line 244
    :cond_1
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->UNKNOWN_CALL_LOG:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    return-object v5
.end method

.method private lookupCallerId(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "views"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "useCallerIdName"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v7, 0x0

    .line 699
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCachedCallerIds:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 700
    .local v6, "cachedDisplay":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 701
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberLabelHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 705
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    :cond_1
    :goto_0
    return-void

    .line 710
    :cond_2
    iget-object v1, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->nameView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberLabelHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 713
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 717
    :cond_3
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;Ljava/lang/String;IZ)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    .line 718
    iget v2, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    .line 717
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$LookupCallerIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setVideoCallIcon(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isContact"    # Z

    .prologue
    .line 620
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isShowingVideoCapabilityInCallLogEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableVideoCallEnabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    return-void

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 629
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->CALL_LOG_LIST:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .line 628
    invoke-interface {v1, v2, p2, p3}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    .line 631
    .local v0, "visiblity":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 643
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;)V

    throw v1

    .line 633
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableVideoCallEnabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    :goto_0
    return-void

    .line 639
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableVideoCallDisabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setVoicemailReadStatus(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;I)V
    .locals 2
    .param p1, "views"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;
    .param p2, "isVoicemailRead"    # I

    .prologue
    .line 688
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 689
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableReadVoicemail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 687
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableUnreadVoicemail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 46
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    .line 301
    .local v39, "views":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;
    const-string/jumbo v41, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 302
    .local v7, "callId":I
    const/4 v9, 0x0

    .line 303
    .local v9, "callSubject":Ljava/lang/String;
    const/4 v8, 0x0

    .line 304
    .local v8, "callLocation":Ljava/lang/String;
    const-string/jumbo v41, "number"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 306
    .local v30, "number":Ljava/lang/String;
    const-string/jumbo v41, "presentation"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 305
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 307
    .local v32, "numberPresentation":I
    const-string/jumbo v41, "name"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 308
    .local v10, "callerName":Ljava/lang/String;
    const-string/jumbo v41, "numbertype"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 310
    .local v12, "callerNumberType":I
    const-string/jumbo v41, "numberlabel"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 309
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 312
    .local v11, "callerNumberLabel":Ljava/lang/String;
    const-string/jumbo v41, "voicemail_uri"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 311
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 313
    .local v13, "callerVoicemailUriString":Ljava/lang/String;
    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->isVisualVoicemail(Ljava/lang/String;)Z

    move-result v24

    .line 315
    .local v24, "isVisualVoiceMail":Z
    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;->isVerizonVoicemail(Ljava/lang/String;)Z

    move-result v23

    .line 317
    .local v23, "isVerizonVoiceMail":Z
    const/16 v38, 0x0

    .line 320
    .local v38, "useCallerIdName":Z
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, v39

    iput v0, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->position:I

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mSyncCallStatusLoadInterface:Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mSyncCallStatusLoadInterface:Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->syncCallIconView:Landroid/widget/ImageView;

    move-object/from16 v42, v0

    .line 323
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->listItemType:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    move-object/from16 v43, v0

    .line 322
    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v30

    move-object/from16 v3, v43

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;->setSyncCallStatus(Landroid/widget/ImageView;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/ListItemType;)V

    .line 325
    :cond_0
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->detailView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    if-eqz v41, :cond_1

    .line 326
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->detailView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->position:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    const v43, 0x7f0e001f

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 328
    :cond_1
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->singleItemView:Landroid/view/View;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->position:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    const v43, 0x7f0e001f

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 329
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailClickableView:Landroid/view/View;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->position:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    const v43, 0x7f0e001f

    move-object/from16 v0, v41

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 330
    const v41, 0x7f0e001c

    move-object/from16 v0, p1

    move/from16 v1, v41

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 331
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const v42, 0x7f0e001d

    move-object/from16 v0, p1

    move/from16 v1, v42

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 332
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->nameView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    move-object/from16 v41, v0

    sget v42, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->TAG_ABBREVIATION_ARRAY:I

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->setTag(ILjava/lang/Object;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mRcsCapableNumbers:Ljava/util/Collection;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v22

    .line 336
    .local v22, "isNumberRcsCapable":Z
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->rcsStatusIcon:Landroid/widget/ImageView;

    move-object/from16 v42, v0

    if-eqz v22, :cond_c

    const/16 v41, 0x0

    :goto_0
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->getContactInfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    move-result-object v21

    .line 341
    .local v21, "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 342
    .local v27, "name":Ljava/lang/String;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->type:I

    move/from16 v29, v0

    .line 343
    .local v29, "ntype":I
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 347
    .local v25, "label":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_d

    .line 353
    :cond_2
    :goto_1
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_10

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mBidiFormatter:Landroid/text/BidiFormatter;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 355
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->nameView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->nameView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 357
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumberForAccessibility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 362
    const/16 v31, 0x0

    .line 363
    .local v31, "numberLabel":Ljava/lang/CharSequence;
    if-ltz v29, :cond_3

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_e

    .line 367
    .end local v31    # "numberLabel":Ljava/lang/CharSequence;
    :cond_3
    :goto_2
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_f

    .line 368
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberLabelHolder:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    :cond_4
    :goto_3
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->detailView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    if-eqz v41, :cond_5

    .line 417
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->detailView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    .line 419
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->nameView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v43

    const/16 v44, 0x0

    aput-object v43, v42, v44

    .line 418
    const v43, 0x7f0901b4

    .line 417
    move-object/from16 v0, p2

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 422
    :cond_5
    const-string/jumbo v41, "type"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 423
    .local v37, "type":I
    const-string/jumbo v41, "date"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 425
    .local v18, "date":J
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->dateView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getRelativeTimeSpan(J)Ljava/lang/CharSequence;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->urgentIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    const/16 v41, 0x4

    move/from16 v0, v37

    move/from16 v1, v41

    if-ne v0, v1, :cond_17

    .line 434
    if-eqz v24, :cond_16

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->bindVisualVoicemailItem(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;)V

    .line 442
    :goto_4
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->singleItemView:Landroid/view/View;

    move-object/from16 v41, v0

    const v42, 0x7f0e0067

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 444
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 445
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_6

    .line 447
    const-string/jumbo v41, "call_items"

    .line 446
    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 448
    .local v14, "callitemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    invoke-virtual {v14}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getSize()I

    move-result v17

    .line 449
    .local v17, "count":I
    const/16 v41, 0x1

    move/from16 v0, v17

    move/from16 v1, v41

    if-le v0, v1, :cond_21

    .line 451
    const/16 v41, 0x0

    check-cast v41, Ljava/util/Locale;

    const-string/jumbo v42, "(%d)"

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    const/16 v45, 0x0

    aput-object v44, v43, v45

    invoke-static/range {v41 .. v43}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .line 452
    .local v36, "text":Ljava/lang/String;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->countView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->countView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    if-eqz v24, :cond_18

    .line 456
    const-string/jumbo v41, "is_read"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 455
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setVoicemailReadStatus(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;I)V

    .line 457
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    :goto_5
    invoke-virtual {v14}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getIds()[I

    move-result-object v15

    .line 467
    .local v15, "collapsedIds":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getLastCallId([I)I

    move-result v26

    .line 471
    .local v26, "lastCallId":I
    invoke-virtual {v14}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getVoicemailUri()Ljava/lang/String;

    move-result-object v40

    .line 472
    .local v40, "voicemailUri":Ljava/lang/String;
    if-eqz v40, :cond_1a

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->bindVoicemailItem(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v14}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->isVoicemailIsRead()Z

    move-result v41

    if-eqz v41, :cond_19

    .line 475
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableReadVoicemail:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    :goto_6
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->countView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->singleItemView:Landroid/view/View;

    move-object/from16 v41, v0

    const v42, 0x7f0e0073

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isUrgent(I)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 485
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->urgentIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableUrgentCall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->urgentIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    .end local v14    # "callitemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    .end local v15    # "collapsedIds":[I
    .end local v17    # "count":I
    .end local v26    # "lastCallId":I
    .end local v36    # "text":Ljava/lang/String;
    .end local v40    # "voicemailUri":Ljava/lang/String;
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mIsCallerIdSupported:Z

    move/from16 v41, v0

    if-eqz v41, :cond_7

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v30

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->lookupCallerId(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;Ljava/lang/String;IZ)V

    .line 572
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v41

    if-eqz v41, :cond_8

    .line 573
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->networkView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    if-eqz v41, :cond_8

    .line 574
    const-string/jumbo v41, "subscription_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 575
    .local v33, "serialNum":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/SlotUtils;->getSlotIdByIccSerialNumber(Landroid/content/Context;Ljava/lang/String;)I

    move-result v34

    .line 576
    .local v34, "slotId":I
    invoke-static/range {v34 .. v34}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getNetworkIcon(I)I

    move-result v20

    .line 577
    .local v20, "iconId":I
    const/16 v41, -0x1

    move/from16 v0, v20

    move/from16 v1, v41

    if-eq v0, v1, :cond_26

    .line 578
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->networkView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->networkView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mSubscriptionChangeNeeded:Z

    move/from16 v41, v0

    if-eqz v41, :cond_8

    .line 585
    invoke-static/range {v34 .. v34}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->convertToMSimConstantsSub(I)I

    move-result v41

    .line 584
    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setIceCallSubscription(Landroid/content/Context;I)V

    .line 586
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mSubscriptionChangeNeeded:Z

    .line 590
    .end local v20    # "iconId":I
    .end local v33    # "serialNum":Ljava/lang/String;
    .end local v34    # "slotId":I
    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getSubject(I)Ljava/lang/String;

    move-result-object v9

    .line 593
    .end local v9    # "callSubject":Ljava/lang/String;
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_27

    .line 594
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->callSubjectView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    :goto_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getLocation(I)Ljava/lang/String;

    move-result-object v8

    .line 604
    .end local v8    # "callLocation":Ljava/lang/String;
    :cond_a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_28

    .line 605
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->callLocationView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-object/from16 v41, v0

    if-nez v41, :cond_b

    .line 613
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mFirst:Z

    .line 614
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 298
    :cond_b
    return-void

    .line 336
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v18    # "date":J
    .end local v21    # "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    .end local v25    # "label":Ljava/lang/String;
    .end local v27    # "name":Ljava/lang/String;
    .end local v29    # "ntype":I
    .end local v37    # "type":I
    .restart local v8    # "callLocation":Ljava/lang/String;
    .restart local v9    # "callSubject":Ljava/lang/String;
    :cond_c
    const/16 v41, 0x8

    goto/16 :goto_0

    .line 348
    .restart local v21    # "info":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    .restart local v25    # "label":Ljava/lang/String;
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v29    # "ntype":I
    :cond_d
    move-object/from16 v27, v10

    .line 349
    move/from16 v29, v12

    .line 350
    move-object/from16 v25, v11

    goto/16 :goto_1

    .line 365
    .restart local v31    # "numberLabel":Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    .line 364
    move-object/from16 v0, v41

    move/from16 v1, v29

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v31

    .local v31, "numberLabel":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 372
    .end local v31    # "numberLabel":Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberLabelHolder:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 376
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    if-eqz v41, :cond_4

    .line 378
    const/16 v16, 0x0

    .line 380
    .local v16, "contentDescription":Ljava/lang/CharSequence;
    const/16 v41, 0x1

    move/from16 v0, v32

    move/from16 v1, v41

    if-eq v0, v1, :cond_12

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getNumberPresentationMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    .line 407
    .end local v16    # "contentDescription":Ljava/lang/CharSequence;
    .local v35, "text":Ljava/lang/CharSequence;
    :goto_b
    if-nez v16, :cond_11

    .line 408
    move-object/from16 v16, v35

    .line 410
    :cond_11
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->nameView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->nameView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 412
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberLabelHolder:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 413
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 382
    .end local v35    # "text":Ljava/lang/CharSequence;
    .restart local v16    # "contentDescription":Ljava/lang/CharSequence;
    :cond_12
    if-eqz v24, :cond_13

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VisualVoicemailHelper;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v35

    .restart local v35    # "text":Ljava/lang/CharSequence;
    goto :goto_b

    .line 384
    .end local v35    # "text":Ljava/lang/CharSequence;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_14

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v35

    .restart local v35    # "text":Ljava/lang/CharSequence;
    goto :goto_b

    .line 386
    .end local v35    # "text":Ljava/lang/CharSequence;
    :cond_14
    if-eqz v23, :cond_15

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 387
    invoke-static/range {v41 .. v42}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VerizonVoicemailHelper;->getVoicemailDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v35

    .line 391
    .restart local v35    # "text":Ljava/lang/CharSequence;
    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v41

    .line 390
    invoke-static/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumberForAccessibility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 395
    .local v16, "contentDescription":Ljava/lang/CharSequence;
    const/16 v38, 0x1

    goto/16 :goto_b

    .line 399
    .end local v35    # "text":Ljava/lang/CharSequence;
    .local v16, "contentDescription":Ljava/lang/CharSequence;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    .line 398
    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v35

    .line 401
    .restart local v35    # "text":Ljava/lang/CharSequence;
    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v41

    .line 400
    invoke-static/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumberForAccessibility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 404
    .local v16, "contentDescription":Ljava/lang/CharSequence;
    const/16 v38, 0x1

    goto/16 :goto_b

    .line 437
    .end local v16    # "contentDescription":Ljava/lang/CharSequence;
    .end local v35    # "text":Ljava/lang/CharSequence;
    .restart local v18    # "date":J
    .restart local v37    # "type":I
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v13}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->bindVoicemailItem(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 440
    :cond_17
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailClickableView:Landroid/view/View;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 459
    .restart local v6    # "bundle":Landroid/os/Bundle;
    .restart local v14    # "callitemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    .restart local v17    # "count":I
    .restart local v36    # "text":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 477
    .restart local v15    # "collapsedIds":[I
    .restart local v26    # "lastCallId":I
    .restart local v40    # "voicemailUri":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableUnreadVoicemail:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 488
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->containsConferenceCall([I)Z

    move-result v41

    if-eqz v41, :cond_1b

    .line 490
    invoke-virtual {v14}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getNames()[Ljava/lang/String;

    move-result-object v28

    .line 492
    .local v28, "names":[Ljava/lang/String;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->countView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableConferenceCall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberLabelHolder:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mConferenceCallTypeLabel:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->nameView:Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;

    move-object/from16 v41, v0

    sget v42, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->TAG_ABBREVIATION_ARRAY:I

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/widget/AbbreviatedTextView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 501
    .end local v28    # "names":[Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isUrgent(I)Z

    move-result v41

    if-eqz v41, :cond_1c

    .line 503
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableUrgentCall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 505
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->hasCallItems(I)Z

    move-result v41

    if-eqz v41, :cond_1d

    .line 507
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableAttachment:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 510
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->containsVideoCall([I)Z

    move-result v41

    if-eqz v41, :cond_1f

    .line 512
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v42, v0

    if-eqz v10, :cond_1e

    const/16 v41, 0x1

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v30

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setVideoCallIcon(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_1e
    const/16 v41, 0x0

    goto :goto_c

    .line 513
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isHdVoiceCall(I)Z

    move-result v41

    if-eqz v41, :cond_20

    .line 514
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableHdVoiceCall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 516
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isShowingVideoCapabilityInCallLogEnabled()Z

    move-result v41

    if-eqz v41, :cond_6

    .line 518
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableRegularCall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 523
    .end local v15    # "collapsedIds":[I
    .end local v26    # "lastCallId":I
    .end local v36    # "text":Ljava/lang/String;
    .end local v40    # "voicemailUri":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->countView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->isConferenceCall(I)Z

    move-result v41

    if-eqz v41, :cond_22

    .line 525
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableConferenceCall:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->numberLabelHolder:Landroid/widget/LinearLayout;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mConferenceCallTypeLabel:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 532
    :cond_22
    packed-switch v37, :pswitch_data_0

    goto/16 :goto_7

    .line 534
    :pswitch_0
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    if-eqz v10, :cond_23

    const/16 v41, 0x1

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v30

    move/from16 v3, v41

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->bindCallExtensionItem(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;ILjava/lang/String;Z)V

    .line 536
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 535
    :cond_23
    const/16 v41, 0x0

    goto :goto_d

    .line 540
    :pswitch_1
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    if-eqz v10, :cond_24

    const/16 v41, 0x1

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v30

    move/from16 v3, v41

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->bindCallExtensionItem(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;ILjava/lang/String;Z)V

    .line 542
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 541
    :cond_24
    const/16 v41, 0x0

    goto :goto_e

    .line 546
    :pswitch_2
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    if-eqz v10, :cond_25

    const/16 v41, 0x1

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v30

    move/from16 v3, v41

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->bindCallExtensionItem(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;ILjava/lang/String;Z)V

    .line 549
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->primaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 548
    :cond_25
    const/16 v41, 0x0

    goto :goto_f

    .line 554
    :pswitch_3
    const-string/jumbo v41, "is_read"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 553
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->setVoicemailReadStatus(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;I)V

    .line 555
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->secondaryIconView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    if-nez v24, :cond_6

    .line 557
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->singleItemView:Landroid/view/View;

    move-object/from16 v41, v0

    .line 558
    const v42, 0x7f0e0073

    .line 557
    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setNextFocusRightId(I)V

    goto/16 :goto_7

    .line 581
    .end local v14    # "callitemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    .end local v17    # "count":I
    .restart local v20    # "iconId":I
    .restart local v33    # "serialNum":Ljava/lang/String;
    .restart local v34    # "slotId":I
    :cond_26
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->networkView:Landroid/widget/ImageView;

    move-object/from16 v41, v0

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 596
    .end local v9    # "callSubject":Ljava/lang/String;
    .end local v20    # "iconId":I
    .end local v33    # "serialNum":Ljava/lang/String;
    .end local v34    # "slotId":I
    :cond_27
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->callSubjectView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    .line 597
    const/16 v44, 0x0

    aput-object v9, v43, v44

    .line 596
    const v44, 0x7f09039a

    move-object/from16 v0, v42

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->callSubjectView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 607
    .end local v8    # "callLocation":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->callLocationView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    .line 608
    const/16 v44, 0x0

    aput-object v8, v43, v44

    .line 607
    const v44, 0x7f0903c8

    move-object/from16 v0, v42

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->callLocationView:Landroid/widget/TextView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 228
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 229
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 226
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 250
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getListItemType(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->getValue()I

    move-result v1

    return v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->getCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 851
    const/4 v0, 0x0

    return v0

    .line 853
    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 257
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;)V

    .line 258
    .local v1, "views":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->-getcom_sonyericsson_android_socialphonebook_util_ListItemTypeSwitchesValues()[I

    move-result-object v2

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->getViewType(I)Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 269
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "ViewType state is undefined"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04001b

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, "view":Landroid/view/View;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->listItemType:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    .line 271
    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->bindRecentCallItemViews(Landroid/view/View;)V

    .line 272
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->detailView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->voiceMailClickableView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v2, 0x7f0e0066

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->singleItemView:Landroid/view/View;

    .line 276
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->singleItemView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->singleItemView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 279
    const v2, 0x7f0e0060

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->callSubjectView:Landroid/widget/TextView;

    .line 280
    const v2, 0x7f0e0072

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->callLocationView:Landroid/widget/TextView;

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 286
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mIsCallerIdSupported:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mAvailableTextWidth:I

    if-nez v2, :cond_0

    .line 287
    iget-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->detailView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->calculateAvailableTextWidth(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mAvailableTextWidth:I

    .line 290
    :cond_0
    return-object v0

    .line 264
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 265
    const v3, 0x7f04001c

    .line 264
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 266
    .restart local v0    # "view":Landroid/view/View;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->UNKNOWN_CALL_LOG:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    iput-object v2, v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$RecentCallsListItemViews;->listItemType:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->startAsyncRequery()V

    .line 863
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 861
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mHandler:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$MessageHandler;

    const-wide/16 v2, 0x1f4

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mFirst:Z

    .line 885
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mLoading:Z

    .line 893
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1003
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1007
    return-void
.end method

.method public final setRcsCapableNumbers(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, "rcsCapableNumbers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 653
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mRcsCapableNumbers:Ljava/util/Collection;

    .line 651
    :cond_0
    return-void
.end method

.method public setSyncCallStatusLoaderInterface(Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;)V
    .locals 0
    .param p1, "loaderInterface"    # Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mSyncCallStatusLoadInterface:Lcom/sonyericsson/android/socialphonebook/addressbookplus/ISyncCallStatusLoad;

    .line 293
    return-void
.end method

.method public setViltePlugin(Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;)V
    .locals 0
    .param p1, "viltePlugin"    # Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 647
    return-void
.end method

.method public setVoicemailMessageStatus(Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;)V
    .locals 0
    .param p1, "currentVoicemailMessageStatus"    # Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCurrentVoicemailMessageStatus:Lcom/sonyericsson/android/socialphonebook/calllog/VoiceMailMessageStatus;

    .line 1011
    return-void
.end method

.method public startAsyncRequery()V
    .locals 2

    .prologue
    .line 870
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mQueryCommandCreator:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;->create()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->queryAsync(Ljava/lang/Runnable;)V

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->mSubscriptionChangeNeeded:Z

    .line 876
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 869
    return-void
.end method
