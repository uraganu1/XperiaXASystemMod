.class public Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;
.implements Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;
.implements Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactActivity$ContextMenuIds;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$1;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$2;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$3;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$4;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$5;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$6;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$7;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$8;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I = null

.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final AMONGST_MIMETYPE_DATAITEM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ANIMATION_STATUS_BAR_COLOR_CHANGE_DURATION:I = 0x96

.field public static final BASE_PRIORITY:I = 0x0

.field private static final CALL_PLUS_ENABLED_NUMBERS:Ljava/lang/String; = "call_plus_enabled_numbers"

.field public static final CALL_PLUS_PRIORITY:I = 0x2

.field private static final CALL_PLUS_TUTORIAL_FINISHED_KEY:Ljava/lang/String; = "call_plus_tutorial_finished"

.field private static final CARD_ENTRY_ID_EDIT_CONTACT:I = -0x2

.field private static final DEFAULT_SCRIM_ALPHA:I = 0xc8

.field public static final DIRECTION_PRIORITY:I = 0x4

.field private static final EXTRA_INFO_OPENING_HOURS_DELIM:Ljava/lang/String; = "\n"

.field private static final EXTRA_TITLE_INFORMATION_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_DIM_BEHIND:I = 0x2

.field private static final HIDE_SET_DEFAULT_OPTION_VALUE:I = 0x1

.field private static final IMPORTANT_CARD_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTENT_DATA_GPLUS_PROFILE_ADD_TO_CIRCLE:Ljava/lang/String; = "Add to circle"

.field private static final INTENT_DATA_HANGOUTS_VIDEO:Ljava/lang/String; = "Start video call"

.field private static final INTENT_EXTRA_SHOW_IMPORTANT_CARD:Ljava/lang/String; = "showImportantCard"

.field private static final KEY_HIDE_SET_DEFAULT_OPTION:Ljava/lang/String; = "key_hide_set_default_option"

.field private static final LEADING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEGACY_AUTHORITY:Ljava/lang/String; = "contacts"

.field private static final LOADER_CONTACT_ID:I = 0x0

.field private static final MIMETYPE_GPLUS_PROFILE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.googleplus.profile"

.field private static final MIMETYPE_HANGOUTS:Ljava/lang/String; = "vnd.android.cursor.item/vnd.googleplus.profile.comm"

.field private static final MIMETYPE_OPENING_HOURS:Ljava/lang/String; = "vnd.android.cursor.item/vnd.somc.support.openinghours"

.field private static final MIMETYPE_SMS:Ljava/lang/String; = "vnd.android-dir/mms-sms"

.field private static final MIN_NUM_CONTACT_ENTRIES_SHOWN:I = 0x3

.field public static final MODE_FULLY_EXPANDED:I = 0x4

.field protected static final REQUEST_CODE_CALL_PLUS_TUTORIAL:I = 0xd

.field private static final REQUEST_CODE_CONTACT_EDITOR_ACTIVITY:I = 0x1

.field private static final REQUEST_CODE_PICK_RINGTONE:I = 0xa

.field private static final SCRIM_COLOR:I

.field public static final SMS_PRIORITY:I = 0x3

.field private static final SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORT_CONTACT_CHAT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.somc.support.chat"

.field private static final SUPPORT_CONTACT_INFO_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.somc.support.try_first"

.field private static final TAG:Ljava/lang/String;

.field public static final VILTE_PRIORITY:I = 0x1

.field private static final WITHIN_MIMETYPE_DATAITEM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZERO_VALUE:Ljava/lang/String; = "0"


# instance fields
.field private mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field private mAvatarView:Landroid/widget/ImageView;

.field private mCachedCp2DataCardModel:Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

.field private mCallPlusCapabilityChecker:Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;

.field private mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

.field private mCallPlusEnabledNumbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

.field private mCallPlusTutorialCardName:Ljava/lang/String;

.field private mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field private mContactData:Lcom/android/contacts/common/model/Contact;

.field private mContactLoader:Lcom/android/contacts/common/model/ContactLoader;

.field private mContactPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mCustomRingtone:Ljava/lang/String;

.field private mEntriesAndActionsTask:Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

.field final mEntryClickHandler:Landroid/view/View$OnClickListener;

.field private final mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mExcludeMimes:[Ljava/lang/String;

.field final mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

.field private mExtraMode:I

.field private mHandler:Landroid/os/Handler;

.field private mHasAlreadyBeenOpened:Z

.field private mHasIntentLaunched:Z

.field private mImportantCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field private mIsContactReadOnly:Z

.field private mIsEntranceAnimationFinished:Z

.field private mIsExitAnimationInProgress:Z

.field private mIsSupportContact:Z

.field private mIsVoiceCapable:Z

.field private final mLoaderContactCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mLookupUri:Landroid/net/Uri;

.field private mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

.field final mMultiShrinkScrollerListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

.field private mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

.field private mOnlyOneEmail:Z

.field private mOnlyOnePhoneNumber:Z

.field private mOptionsMenuCanCreateShortcut:Z

.field private mOptionsMenuCanSetRingtone:Z

.field private mOptionsMenuCopyable:Z

.field private mOptionsMenuDeletable:Z

.field private mOptionsMenuEditable:Z

.field private mOptionsMenuLinkable:Z

.field private mOptionsMenuShareable:Z

.field private final mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mRcsCapabilitiesRequested:Z

.field private mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

.field private mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

.field private mShouldChangeCallPlusTutorialText:Z

.field private mShowImportantCard:Z

.field private mStatusBarColor:I

.field private mUniquePhoneNumberSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCallSwitchCard:Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;

.field private mVideoCallingEnabled:Z

.field private mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

.field private mWindowScrim:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsSupportContact:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsVoiceCapable:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOneEmail:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOnlyOnePhoneNumber:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsCapabilitiesRequested:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mUniquePhoneNumberSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusEnabledNumbers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/common/model/Contact;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/contacts/quickcontact/QuickContactActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/contacts/quickcontact/QuickContactActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    return v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

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
    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->-com_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;)Lcom/android/contacts/common/model/Contact;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCustomRingtone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuCopyable:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuDeletable:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuEditable:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuLinkable:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuShareable:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsCapabilitiesRequested:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mUniquePhoneNumberSet:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;)Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsContactReadOnly:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsExitAnimationInProgress:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsSupportContact:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuCanCreateShortcut:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuCanSetRingtone:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactCanCreateShortcut()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactCanSetRingtone()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->analyzeWhitenessOfPhotoAsynchronously()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;)V
    .locals 0
    .param p1, "data"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindContactData(Lcom/android/contacts/common/model/Contact;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    .locals 0
    .param p1, "cp2DataCardModel"    # Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindDataToCards(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->editContact(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->runEntranceAnimation()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->sendActionsToGa(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showActivity()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showCallPlusTutorialIfNeeded()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateCallComposerAccordingToCapabilities()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactCopyable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateStatusBarColor()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactDeletable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactEditable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactLinkable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactReadOnly()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isContactShareable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isSupportContact()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/common/model/Contact;[Ljava/lang/String;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
    .locals 1
    .param p1, "data"    # Lcom/android/contacts/common/model/Contact;
    .param p2, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->generateDataModelFromContact(Lcom/android/contacts/common/model/Contact;[Ljava/lang/String;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    const-class v0, Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TAG:Ljava/lang/String;

    .line 227
    const/16 v0, 0xc8

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->SCRIM_COLOR:I

    .line 343
    new-array v0, v6, [Ljava/lang/String;

    .line 344
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v4

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v2

    .line 345
    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v5

    .line 343
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    .line 347
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 348
    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    aput-object v1, v0, v3

    .line 351
    const-string/jumbo v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v4

    .line 352
    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    aput-object v1, v0, v2

    .line 353
    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    aput-object v1, v0, v5

    .line 354
    const-string/jumbo v1, "vnd.android.cursor.item/relation"

    aput-object v1, v0, v6

    .line 355
    const-string/jumbo v1, "vnd.android.cursor.item/im"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 356
    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 357
    const-string/jumbo v1, "vnd.android.cursor.item/identity"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 358
    const-string/jumbo v1, "vnd.android.cursor.item/note"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 347
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;

    .line 366
    new-array v0, v4, [Ljava/lang/String;

    .line 367
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.somc.support.try_first"

    aput-object v1, v0, v3

    .line 366
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->IMPORTANT_CARD_MIMETYPES:Ljava/util/List;

    .line 372
    new-array v0, v4, [Ljava/lang/String;

    .line 374
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.somc.support.openinghours"

    aput-object v1, v0, v3

    .line 372
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->EXTRA_TITLE_INFORMATION_MIMETYPES:Ljava/util/List;

    .line 669
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$6;

    invoke-direct {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;-><init>()V

    .line 668
    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->WITHIN_MIMETYPE_DATAITEM_COMPARATOR:Ljava/util/Comparator;

    .line 704
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    invoke-direct {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;-><init>()V

    .line 703
    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->AMONGST_MIMETYPE_DATAITEM_COMPARATOR:Ljava/util/Comparator;

    .line 205
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 321
    new-instance v0, Lcom/android/contacts/util/ImageViewDrawableSetter;

    invoke-direct {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    .line 330
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Landroid/os/Handler;

    .line 399
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    .line 483
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 482
    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    .line 503
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 502
    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 610
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 609
    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMultiShrinkScrollerListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    .line 645
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 644
    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    .line 2049
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$8;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 2048
    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderContactCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 205
    return-void
.end method

.method private analyzeWhitenessOfPhotoAsynchronously()V
    .locals 3

    .prologue
    .line 1998
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1999
    .local v0, "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$16;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$16;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1997
    return-void
.end method

.method private bindContactData(Lcom/android/contacts/common/model/Contact;)V
    .locals 4
    .param p1, "data"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 996
    const-string/jumbo v0, "bindContactData"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 997
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    .line 998
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->invalidateOptionsMenu()V

    .line 1000
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1001
    const-string/jumbo v0, "Set display photo & name"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAvatarView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/contacts/quickcontact/QuickContactActivity$13;

    invoke-direct {v3, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$13;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setupContactPhoto(Lcom/android/contacts/common/model/Contact;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/contacts/util/ImageViewDrawableSetter$CallBack;)V

    .line 1009
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/common/model/Contact;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(Ljava/lang/String;)V

    .line 1011
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setIconForRcsContact()V

    .line 1013
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1015
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    .line 1016
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/common/model/Contact;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 995
    return-void
.end method

.method private bindDataToCards(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    .locals 0
    .param p1, "cp2DataCardModel"    # Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->populateContactAndAboutCard(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    .line 1019
    return-void
.end method

.method private buildCardEntries(Lcom/android/contacts/common/model/Contact;Ljava/util/Map;Ljava/util/Collection;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;
    .locals 6
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;
    .param p4, "aboutCardTitleOut"    # Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/Contact;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1039
    .local p2, "dataItemsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;>;"
    .local p3, "mimetypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v0, "cardEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;>;"
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "mimetype$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1041
    .local v3, "mimetype":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1042
    .local v2, "mimeTypeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    if-eqz v2, :cond_0

    .line 1045
    invoke-direct {p0, p1, v2, p4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemsToEntries(Lcom/android/contacts/common/model/Contact;Ljava/util/List;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;

    move-result-object v1

    .line 1047
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1048
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1051
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    .end local v2    # "mimeTypeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .end local v3    # "mimetype":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private changeCallPlusTutorialDescription()V
    .locals 6

    .prologue
    .line 2683
    const v2, 0x7f0e007d

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2684
    .local v0, "tutorialDesc":Landroid/widget/TextView;
    const v2, 0x7f0e007e

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2685
    .local v1, "tutorialImage":Landroid/widget/ImageView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09039e

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2686
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 2687
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusTutorialCardName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2686
    const v4, 0x7f09039f

    invoke-virtual {p0, v4, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2685
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2688
    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2682
    return-void
.end method

.method private concatenateExtraInformationString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "delim"    # Ljava/lang/String;

    .prologue
    .line 1074
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1075
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1077
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string/jumbo v2, ""

    return-object v2

    .line 1074
    :cond_0
    const/4 v0, 0x1

    .local v0, "str1Empty":Z
    goto :goto_0

    .line 1075
    .end local v0    # "str1Empty":Z
    :cond_1
    const/4 v1, 0x1

    .local v1, "str2Empty":Z
    goto :goto_1

    .line 1078
    .end local v1    # "str2Empty":Z
    :cond_2
    if-eqz v0, :cond_3

    return-object p2

    .line 1079
    :cond_3
    if-eqz v1, :cond_4

    return-object p1

    .line 1080
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private copyContact()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2540
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getDirectoryExportSupport()I

    move-result v2

    .line 2541
    .local v2, "exportSupport":I
    if-ne v4, v2, :cond_1

    .line 2542
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getDirectoryAccountName()Ljava/lang/String;

    move-result-object v3

    .line 2543
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/Contact;->getDirectoryAccountType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2542
    invoke-direct {v0, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->createCopy(Ljava/util/ArrayList;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/Context;)V

    .line 2539
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_0
    :goto_0
    return-void

    .line 2546
    :cond_1
    const/4 v3, 0x2

    if-eq v3, v2, :cond_2

    .line 2547
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isInVisibleGroup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2548
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 2550
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2553
    sget-object v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No writable account installed to copy a contact to."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    return-void

    .line 2559
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 2560
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-static {v4, v3, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->createCopy(Ljava/util/ArrayList;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/Context;)V

    .line 2562
    return-void

    .line 2565
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showSelectBackupAccountDialog(Z)V

    goto :goto_0
.end method

.method public static createCopy(Ljava/util/ArrayList;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/Context;)V
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2572
    .local p0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const v1, 0x7f09013e

    .line 2573
    const/4 v2, 0x1

    .line 2572
    invoke-static {p2, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2576
    const-class v1, Lcom/android/contacts/quickcontact/QuickContactActivity;

    const-string/jumbo v2, "android.intent.action.VIEW"

    .line 2574
    invoke-static {p2, p0, p1, v1, v2}, Lcom/android/contacts/ContactSaveService;->createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/common/model/account/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2577
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2571
    return-void
.end method

.method private createDataItem(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/contacts/common/model/dataitem/DataItem;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "primarySettings"    # I

    .prologue
    .line 1299
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1300
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string/jumbo v2, "data1"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string/jumbo v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1303
    const-string/jumbo v2, "data_sync2"

    const-string/jumbo v3, "semc:"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string/jumbo v2, "is_primary"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1305
    const-string/jumbo v2, "is_super_primary"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1306
    const-string/jumbo v2, "raw_contact_id"

    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->getRawContactId(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1307
    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string/jumbo v2, "key_hide_set_default_option"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    new-instance v2, Lcom/android/contacts/common/model/RawContact;

    invoke-direct {v2, p1}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v1}, Lcom/android/contacts/common/model/dataitem/DataItem;->createFrom(Lcom/android/contacts/common/model/RawContact;Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;

    move-result-object v0

    .line 1310
    .local v0, "item":Lcom/android/contacts/common/model/dataitem/DataItem;
    return-object v0
.end method

.method private createLauncherShortcutWithContact()V
    .locals 2

    .prologue
    .line 2331
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    .line 2332
    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$17;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$17;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 2331
    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 2343
    .local v0, "builder":Lcom/android/contacts/list/ShortcutIntentBuilder;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    .line 2330
    return-void
.end method

.method private dataItemToEntry(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;Lcom/android/contacts/common/model/Contact;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;Ljava/util/Set;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    .locals 87
    .param p1, "dataItem"    # Lcom/android/contacts/common/model/dataitem/DataItem;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "contactData"    # Lcom/android/contacts/common/model/Contact;
    .param p4, "aboutCardName"    # Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            "Landroid/content/Context;",
            "Lcom/android/contacts/common/model/Contact;",
            "Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;"
        }
    .end annotation

    .prologue
    .line 1543
    .local p5, "callPlusCapableNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1544
    .local v6, "header":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1545
    .local v5, "subHeader":Ljava/lang/String;
    const/16 v35, 0x0

    .line 1546
    .local v35, "subHeaderIcon":Landroid/graphics/drawable/Drawable;
    const/16 v81, 0x0

    .line 1547
    .local v81, "text":Ljava/lang/String;
    const/16 v37, 0x0

    .line 1548
    .local v37, "textIcon":Landroid/graphics/drawable/Drawable;
    const/16 v38, 0x1

    .line 1549
    .local v38, "shouldApplyColor":Z
    const/16 v61, 0x0

    .line 1550
    .local v61, "isEditable":Z
    const/4 v4, 0x0

    .line 1552
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    const/16 v41, 0x0

    .line 1553
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    const/16 v42, 0x0

    .line 1554
    .local v42, "primaryIconResourceId":I
    new-instance v74, Ljava/lang/StringBuilder;

    invoke-direct/range {v74 .. v74}, Ljava/lang/StringBuilder;-><init>()V

    .line 1555
    .local v74, "primaryContentDescription":Ljava/lang/StringBuilder;
    const/16 v43, 0x0

    .line 1557
    .local v43, "primaryIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v47

    .line 1559
    .local v47, "actionItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v78

    .line 1562
    .local v78, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    if-eqz v7, :cond_5

    move-object/from16 v60, p1

    .line 1563
    check-cast v60, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    .line 1564
    .local v60, "im":Lcom/android/contacts/common/model/dataitem/ImDataItem;
    move-object/from16 v0, p2

    move-object/from16 v1, v60

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->buildImIntent(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/ImDataItem;)Landroid/util/Pair;

    move-result-object v7

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v43, v0

    .end local v43    # "primaryIntent":Landroid/content/Intent;
    check-cast v43, Landroid/content/Intent;

    .line 1565
    .local v43, "primaryIntent":Landroid/content/Intent;
    invoke-virtual/range {v60 .. v60}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v62

    .line 1567
    .local v62, "isEmail":Z
    invoke-virtual/range {v60 .. v60}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1568
    const/16 v76, -0x1

    .line 1572
    .local v76, "protocol":I
    :goto_0
    const/4 v7, -0x1

    move/from16 v0, v76

    if-ne v0, v7, :cond_4

    .line 1575
    const v7, 0x7f090190

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1577
    .local v6, "header":Ljava/lang/String;
    invoke-virtual/range {v60 .. v60}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v7

    .line 1576
    move-object/from16 v0, v78

    move/from16 v1, v76

    invoke-static {v0, v1, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1578
    .local v5, "subHeader":Ljava/lang/String;
    invoke-virtual/range {v60 .. v60}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v9

    .local v9, "text":Ljava/lang/String;
    move-object/from16 v81, v9

    .end local v9    # "text":Ljava/lang/String;
    .local v81, "text":Ljava/lang/String;
    move-object/from16 v80, v5

    .line 1584
    .end local v5    # "subHeader":Ljava/lang/String;
    .end local v81    # "text":Ljava/lang/String;
    .local v80, "subHeader":Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {v60 .. v60}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v5

    .line 1585
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v10

    .line 1584
    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    move-object/from16 v5, v80

    .line 1937
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .end local v6    # "header":Ljava/lang/String;
    .end local v41    # "primaryIcon":Landroid/graphics/drawable/Drawable;
    .end local v43    # "primaryIntent":Landroid/content/Intent;
    .end local v60    # "im":Lcom/android/contacts/common/model/dataitem/ImDataItem;
    .end local v62    # "isEmail":Z
    .end local v76    # "protocol":I
    .end local v80    # "subHeader":Ljava/lang/String;
    :cond_0
    :goto_2
    if-eqz v43, :cond_1

    .line 1939
    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1940
    const/16 v43, 0x0

    .line 1945
    :cond_1
    if-nez v41, :cond_25

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1946
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 1945
    if-eqz v7, :cond_25

    .line 1947
    const/4 v7, 0x0

    return-object v7

    .line 1570
    .end local v9    # "text":Ljava/lang/String;
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .local v5, "subHeader":Ljava/lang/String;
    .local v6, "header":Ljava/lang/String;
    .restart local v41    # "primaryIcon":Landroid/graphics/drawable/Drawable;
    .restart local v43    # "primaryIntent":Landroid/content/Intent;
    .restart local v60    # "im":Lcom/android/contacts/common/model/dataitem/ImDataItem;
    .restart local v62    # "isEmail":Z
    .local v81, "text":Ljava/lang/String;
    :cond_2
    if-eqz v62, :cond_3

    const/16 v76, 0x5

    .restart local v76    # "protocol":I
    goto :goto_0

    .end local v76    # "protocol":I
    :cond_3
    invoke-virtual/range {v60 .. v60}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v76

    .restart local v76    # "protocol":I
    goto :goto_0

    .line 1581
    :cond_4
    invoke-virtual/range {v60 .. v60}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v7

    .line 1580
    move-object/from16 v0, v78

    move/from16 v1, v76

    invoke-static {v0, v1, v7}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1582
    .local v6, "header":Ljava/lang/String;
    invoke-virtual/range {v60 .. v60}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v5

    .local v5, "subHeader":Ljava/lang/String;
    move-object/from16 v80, v5

    .end local v5    # "subHeader":Ljava/lang/String;
    .restart local v80    # "subHeader":Ljava/lang/String;
    goto :goto_1

    .line 1586
    .end local v60    # "im":Lcom/android/contacts/common/model/dataitem/ImDataItem;
    .end local v62    # "isEmail":Z
    .end local v76    # "protocol":I
    .end local v80    # "subHeader":Ljava/lang/String;
    .local v5, "subHeader":Ljava/lang/String;
    .local v6, "header":Ljava/lang/String;
    .local v43, "primaryIntent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;

    if-eqz v7, :cond_6

    move-object/from16 v68, p1

    .line 1587
    check-cast v68, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;

    .line 1588
    .local v68, "organization":Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;
    const v7, 0x7f090191

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1589
    .local v6, "header":Ljava/lang/String;
    invoke-virtual/range {v68 .. v68}, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;->getCompany()Ljava/lang/String;

    move-result-object v5

    .line 1590
    .local v5, "subHeader":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1591
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v10

    .line 1590
    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1592
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {v68 .. v68}, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "text":Ljava/lang/String;
    goto :goto_2

    .line 1593
    .end local v9    # "text":Ljava/lang/String;
    .end local v68    # "organization":Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .local v5, "subHeader":Ljava/lang/String;
    .local v6, "header":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;

    if-eqz v7, :cond_a

    move-object/from16 v66, p1

    .line 1594
    check-cast v66, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;

    .line 1597
    .local v66, "nickname":Lcom/android/contacts/common/model/dataitem/NicknameDataItem;
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/common/model/Contact;->getNameRawContactId()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getRawContactId()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-nez v7, :cond_7

    const/16 v63, 0x1

    .line 1600
    .local v63, "isNameRawContact":Z
    :goto_3
    if-eqz v63, :cond_9

    .line 1601
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/common/model/Contact;->getDisplayNameSource()I

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_8

    const/16 v53, 0x1

    .line 1603
    .local v53, "duplicatesTitle":Z
    :goto_4
    if-nez v53, :cond_29

    .line 1604
    const v7, 0x7f090192

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1605
    .local v6, "header":Ljava/lang/String;
    invoke-virtual/range {v66 .. v66}, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1606
    .local v5, "subHeader":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1607
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v10

    .line 1606
    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 1597
    .end local v9    # "text":Ljava/lang/String;
    .end local v53    # "duplicatesTitle":Z
    .end local v63    # "isNameRawContact":Z
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .local v5, "subHeader":Ljava/lang/String;
    .local v6, "header":Ljava/lang/String;
    :cond_7
    const/16 v63, 0x0

    .restart local v63    # "isNameRawContact":Z
    goto :goto_3

    .line 1601
    :cond_8
    const/16 v53, 0x0

    .restart local v53    # "duplicatesTitle":Z
    goto :goto_4

    .line 1600
    .end local v53    # "duplicatesTitle":Z
    :cond_9
    const/16 v53, 0x0

    .restart local v53    # "duplicatesTitle":Z
    goto :goto_4

    .line 1609
    .end local v53    # "duplicatesTitle":Z
    .end local v63    # "isNameRawContact":Z
    .end local v66    # "nickname":Lcom/android/contacts/common/model/dataitem/NicknameDataItem;
    :cond_a
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/NoteDataItem;

    if-eqz v7, :cond_b

    move-object/from16 v67, p1

    .line 1610
    check-cast v67, Lcom/android/contacts/common/model/dataitem/NoteDataItem;

    .line 1611
    .local v67, "note":Lcom/android/contacts/common/model/dataitem/NoteDataItem;
    const v7, 0x7f090193

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1612
    .local v6, "header":Ljava/lang/String;
    invoke-virtual/range {v67 .. v67}, Lcom/android/contacts/common/model/dataitem/NoteDataItem;->getNote()Ljava/lang/String;

    move-result-object v5

    .line 1613
    .local v5, "subHeader":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1614
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v10

    .line 1613
    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 1615
    .end local v9    # "text":Ljava/lang/String;
    .end local v67    # "note":Lcom/android/contacts/common/model/dataitem/NoteDataItem;
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .local v5, "subHeader":Ljava/lang/String;
    .local v6, "header":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;

    if-eqz v7, :cond_c

    move-object/from16 v86, p1

    .line 1616
    check-cast v86, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;

    .line 1617
    .local v86, "website":Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;
    const v7, 0x7f090194

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1618
    .local v6, "header":Ljava/lang/String;
    invoke-virtual/range {v86 .. v86}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 1619
    .local v5, "subHeader":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1620
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v10

    .line 1619
    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1622
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    :try_start_0
    new-instance v85, Landroid/net/WebAddress;

    invoke-virtual/range {v86 .. v86}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;->buildDataString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v85

    invoke-direct {v0, v7}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 1623
    .local v85, "webAddress":Landroid/net/WebAddress;
    new-instance v75, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-virtual/range {v85 .. v85}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v0, v75

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v43    # "primaryIntent":Landroid/content/Intent;
    .local v75, "primaryIntent":Landroid/content/Intent;
    move-object/from16 v43, v75

    .end local v75    # "primaryIntent":Landroid/content/Intent;
    .local v43, "primaryIntent":Landroid/content/Intent;
    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 1624
    .end local v9    # "text":Ljava/lang/String;
    .end local v85    # "webAddress":Landroid/net/WebAddress;
    .local v43, "primaryIntent":Landroid/content/Intent;
    :catch_0
    move-exception v54

    .line 1625
    .local v54, "e":Landroid/net/ParseException;
    sget-object v7, Lcom/android/contacts/quickcontact/QuickContactActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t parse website: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v86 .. v86}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;->buildDataString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 1627
    .end local v9    # "text":Ljava/lang/String;
    .end local v54    # "e":Landroid/net/ParseException;
    .end local v86    # "website":Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .local v5, "subHeader":Ljava/lang/String;
    .local v6, "header":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    if-eqz v7, :cond_f

    move-object/from16 v57, p1

    .line 1628
    check-cast v57, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    .line 1629
    .local v57, "event":Lcom/android/contacts/common/model/dataitem/EventDataItem;
    invoke-virtual/range {v57 .. v57}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->buildDataString()Ljava/lang/String;

    move-result-object v52

    .line 1630
    .local v52, "dataString":Ljava/lang/String;
    const/4 v7, 0x0

    move-object/from16 v0, v52

    invoke-static {v0, v7}, Lcom/android/contacts/common/util/DateUtils;->parseDate(Ljava/lang/String;Z)Ljava/util/Calendar;

    move-result-object v50

    .line 1631
    .local v50, "cal":Ljava/util/Calendar;
    if-eqz v50, :cond_d

    .line 1633
    invoke-static/range {v50 .. v50}, Lcom/android/contacts/common/util/DateUtils;->getNextAnnualDate(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v65

    .line 1634
    .local v65, "nextAnniversary":Ljava/util/Date;
    sget-object v7, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v49

    .line 1635
    .local v49, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v7, "time"

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1636
    invoke-virtual/range {v65 .. v65}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    move-object/from16 v0, v49

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1637
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v49 .. v49}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v43

    .line 1639
    .end local v43    # "primaryIntent":Landroid/content/Intent;
    .end local v49    # "builder":Landroid/net/Uri$Builder;
    .end local v65    # "nextAnniversary":Ljava/util/Date;
    :cond_d
    const v7, 0x7f090195

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1640
    .local v6, "header":Ljava/lang/String;
    invoke-virtual/range {v57 .. v57}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->hasKindTypeColumn()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1641
    invoke-virtual/range {v57 .. v57}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getKindTypeColumn()I

    move-result v7

    .line 1642
    invoke-virtual/range {v57 .. v57}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 1641
    move-object/from16 v0, v78

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1644
    .end local v5    # "subHeader":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1645
    .end local v81    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1646
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v14

    move-object v8, v4

    move-object v10, v6

    .line 1645
    invoke-direct/range {v8 .. v14}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    goto/16 :goto_2

    .line 1647
    .end local v9    # "text":Ljava/lang/String;
    .end local v50    # "cal":Ljava/util/Calendar;
    .end local v52    # "dataString":Ljava/lang/String;
    .end local v57    # "event":Lcom/android/contacts/common/model/dataitem/EventDataItem;
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .restart local v5    # "subHeader":Ljava/lang/String;
    .local v6, "header":Ljava/lang/String;
    .restart local v43    # "primaryIntent":Landroid/content/Intent;
    .restart local v81    # "text":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/RelationDataItem;

    if-eqz v7, :cond_11

    move-object/from16 v77, p1

    .line 1648
    check-cast v77, Lcom/android/contacts/common/model/dataitem/RelationDataItem;

    .line 1649
    .local v77, "relation":Lcom/android/contacts/common/model/dataitem/RelationDataItem;
    invoke-virtual/range {v77 .. v77}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->buildDataString()Ljava/lang/String;

    move-result-object v52

    .line 1650
    .restart local v52    # "dataString":Ljava/lang/String;
    invoke-static/range {v52 .. v52}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 1651
    new-instance v43, Landroid/content/Intent;

    .end local v43    # "primaryIntent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.action.SEARCH"

    move-object/from16 v0, v43

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1652
    .local v43, "primaryIntent":Landroid/content/Intent;
    const-string/jumbo v7, "query"

    move-object/from16 v0, v43

    move-object/from16 v1, v52

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1653
    const-string/jumbo v7, "vnd.android.cursor.dir/contact"

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1655
    .end local v43    # "primaryIntent":Landroid/content/Intent;
    :cond_10
    const v7, 0x7f090196

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1656
    .local v6, "header":Ljava/lang/String;
    invoke-virtual/range {v77 .. v77}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1657
    .local v5, "subHeader":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1658
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v16

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    .line 1657
    invoke-direct/range {v10 .. v16}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1659
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {v77 .. v77}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->hasKindTypeColumn()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1661
    invoke-virtual/range {v77 .. v77}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getKindTypeColumn()I

    move-result v7

    .line 1662
    invoke-virtual/range {v77 .. v77}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 1660
    move-object/from16 v0, v78

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 1664
    .end local v9    # "text":Ljava/lang/String;
    .end local v52    # "dataString":Ljava/lang/String;
    .end local v77    # "relation":Lcom/android/contacts/common/model/dataitem/RelationDataItem;
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .local v5, "subHeader":Ljava/lang/String;
    .local v6, "header":Ljava/lang/String;
    .local v43, "primaryIntent":Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    if-eqz v7, :cond_16

    move-object/from16 v70, p1

    .line 1665
    check-cast v70, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    .line 1666
    .local v70, "phone":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 1667
    const v7, 0x7f0900cc

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->buildDataString()Ljava/lang/String;

    move-result-object v7

    .line 1668
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1670
    .local v6, "header":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1671
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    const v7, 0x7f09007f

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v13

    .line 1672
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v16

    .line 1673
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isNeedToHideSetDefaultOption(Lcom/android/contacts/common/model/dataitem/DataItem;)Z

    move-result v17

    move-object v10, v4

    move-object v11, v6

    .line 1670
    invoke-direct/range {v10 .. v17}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V

    .line 1674
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->hasKindTypeColumn()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 1675
    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getKindTypeColumn()I

    move-result v7

    .line 1676
    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 1675
    move-object/from16 v0, v78

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1677
    .end local v81    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    move-object/from16 v0, v74

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    :goto_5
    move-object/from16 v0, v74

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isPhoneShownAsPrimaryIcon(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1686
    const v7, 0x7f02003c

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1687
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    const v42, 0x7f02003c

    .line 1688
    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v7, v8}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v43

    .line 1690
    .local v43, "primaryIntent":Landroid/content/Intent;
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.SENDTO"

    .line 1691
    const-string/jumbo v8, "smsto"

    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 1690
    invoke-static {v8, v10, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v14, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1693
    .local v14, "smsIntent":Landroid/content/Intent;
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1694
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isSmsAllowed(Landroid/content/Context;)Z

    move-result v7

    .line 1693
    if-eqz v7, :cond_12

    .line 1696
    new-instance v10, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    .line 1697
    const v7, 0x7f020065

    .line 1696
    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1698
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 1699
    const/4 v8, 0x0

    aput-object v6, v7, v8

    const v8, 0x7f0900da

    .line 1698
    move-object/from16 v0, v78

    invoke-virtual {v0, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1696
    const/4 v11, 0x3

    .line 1698
    const v13, 0x7f020065

    .line 1696
    invoke-direct/range {v10 .. v15}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, v47

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1718
    .end local v14    # "smsIntent":Landroid/content/Intent;
    .end local v41    # "primaryIcon":Landroid/graphics/drawable/Drawable;
    .end local v43    # "primaryIntent":Landroid/content/Intent;
    :cond_12
    :goto_6
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v84

    .line 1719
    .local v84, "viltePlugin":Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;
    invoke-interface/range {v84 .. v84}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->isVilteSupported()Z

    move-result v59

    .line 1720
    .local v59, "hasVideoCallEntity":Z
    if-eqz v59, :cond_15

    .line 1723
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .line 1724
    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/common/model/Contact;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_14

    const/4 v7, 0x1

    .line 1722
    :goto_7
    move-object/from16 v0, v84

    invoke-interface {v0, v8, v10, v7}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallEntityVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;Ljava/lang/String;Z)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v56

    .line 1725
    .local v56, "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I

    move-result-object v7

    invoke-virtual/range {v56 .. v56}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1756
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;

    move-object/from16 v0, v56

    invoke-direct {v7, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/UnsupportedEntityException;-><init>(Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;)V

    throw v7

    .line 1702
    .end local v56    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .end local v59    # "hasVideoCallEntity":Z
    .end local v84    # "viltePlugin":Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    .local v43, "primaryIntent":Landroid/content/Intent;
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSmsCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1703
    const v7, 0x7f020065

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1704
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    const v42, 0x7f020065

    .line 1706
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isSmsAllowed(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1707
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.SENDTO"

    .line 1708
    const-string/jumbo v8, "smsto"

    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 1707
    invoke-static {v8, v10, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v14, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1711
    .restart local v14    # "smsIntent":Landroid/content/Intent;
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1712
    move-object/from16 v43, v14

    .local v43, "primaryIntent":Landroid/content/Intent;
    goto :goto_6

    .line 1724
    .end local v14    # "smsIntent":Landroid/content/Intent;
    .end local v41    # "primaryIcon":Landroid/graphics/drawable/Drawable;
    .end local v43    # "primaryIntent":Landroid/content/Intent;
    .restart local v59    # "hasVideoCallEntity":Z
    .restart local v84    # "viltePlugin":Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;
    :cond_14
    const/4 v7, 0x0

    goto :goto_7

    .line 1727
    .restart local v56    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    :pswitch_0
    new-instance v15, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    .line 1728
    const v7, 0x7f02007a

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1730
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 1731
    const v7, 0x7f090372

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1727
    const/16 v16, 0x1

    .line 1729
    const v18, 0x7f02007a

    .line 1727
    invoke-direct/range {v15 .. v20}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1759
    .end local v56    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    :cond_15
    :goto_8
    :pswitch_1
    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v71

    .line 1760
    .local v71, "phoneNumber":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1761
    move-object/from16 v0, p5

    move-object/from16 v1, v71

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 1760
    if-eqz v7, :cond_0

    .line 1763
    sget-object v7, Lcom/android/contacts/quickcontact/QuickContactActivity;->TAG:Ljava/lang/String;

    .line 1762
    move-object/from16 v0, v71

    invoke-static {v0, v7}, Lcom/sonymobile/holla/CallPlusIntents;->getCallComposerIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 1764
    .local v19, "callPlusIntent":Landroid/content/Intent;
    const v18, 0x7f020012

    .line 1765
    .local v18, "iconId":I
    move-object/from16 v0, v78

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1766
    .local v17, "icon":Landroid/graphics/drawable/Drawable;
    const v7, 0x7f090398

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1768
    .local v20, "prepareCallText":Ljava/lang/String;
    new-instance v15, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    const/16 v16, 0x2

    invoke-direct/range {v15 .. v20}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1770
    .local v15, "currentItem":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1735
    .end local v15    # "currentItem":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    .end local v17    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v18    # "iconId":I
    .end local v19    # "callPlusIntent":Landroid/content/Intent;
    .end local v20    # "prepareCallText":Ljava/lang/String;
    .end local v71    # "phoneNumber":Ljava/lang/String;
    .restart local v56    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    :pswitch_2
    new-instance v15, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    .line 1736
    const v7, 0x7f02007b

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1738
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-virtual/range {v70 .. v70}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 1739
    const v7, 0x7f090372

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1735
    const/16 v16, 0x1

    .line 1737
    const v18, 0x7f02007b

    .line 1735
    invoke-direct/range {v15 .. v20}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1743
    :pswitch_3
    new-instance v15, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    .line 1744
    const v7, 0x7f02007b

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1747
    const v7, 0x7f090372

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1743
    const/16 v16, 0x1

    .line 1745
    const v18, 0x7f02007b

    .line 1746
    const/16 v19, 0x0

    .line 1748
    const/16 v21, 0x1

    .line 1743
    invoke-direct/range {v15 .. v21}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;Z)V

    move-object/from16 v0, v47

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1773
    .end local v9    # "text":Ljava/lang/String;
    .end local v56    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .end local v59    # "hasVideoCallEntity":Z
    .end local v70    # "phone":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    .end local v84    # "viltePlugin":Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .local v6, "header":Ljava/lang/String;
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    .local v43, "primaryIntent":Landroid/content/Intent;
    .restart local v81    # "text":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/EmailDataItem;

    if-eqz v7, :cond_17

    move-object/from16 v55, p1

    .line 1774
    check-cast v55, Lcom/android/contacts/common/model/dataitem/EmailDataItem;

    .line 1775
    .local v55, "email":Lcom/android/contacts/common/model/dataitem/EmailDataItem;
    invoke-virtual/range {v55 .. v55}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getData()Ljava/lang/String;

    move-result-object v48

    .line 1776
    .local v48, "address":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 1777
    const v7, 0x7f0900f2

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    const-string/jumbo v7, "mailto"

    const/4 v8, 0x0

    move-object/from16 v0, v48

    invoke-static {v7, v0, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v64

    .line 1779
    .local v64, "mailUri":Landroid/net/Uri;
    new-instance v43, Landroid/content/Intent;

    .end local v43    # "primaryIntent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.action.SENDTO"

    move-object/from16 v0, v43

    move-object/from16 v1, v64

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1780
    .local v43, "primaryIntent":Landroid/content/Intent;
    invoke-virtual/range {v55 .. v55}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1781
    .local v6, "header":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1782
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    const v7, 0x7f090080

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v25

    .line 1783
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v26

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v28

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    .line 1781
    invoke-direct/range {v22 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1784
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {v55 .. v55}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->hasKindTypeColumn()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 1785
    invoke-virtual/range {v55 .. v55}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getKindTypeColumn()I

    move-result v7

    .line 1786
    invoke-virtual/range {v55 .. v55}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 1785
    move-object/from16 v0, v78

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1787
    .end local v81    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    move-object/from16 v0, v74

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    :goto_9
    move-object/from16 v0, v74

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    const v7, 0x7f020052

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1791
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    const v42, 0x7f020052

    goto/16 :goto_2

    .line 1793
    .end local v9    # "text":Ljava/lang/String;
    .end local v48    # "address":Ljava/lang/String;
    .end local v55    # "email":Lcom/android/contacts/common/model/dataitem/EmailDataItem;
    .end local v64    # "mailUri":Landroid/net/Uri;
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .local v6, "header":Ljava/lang/String;
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    .local v43, "primaryIntent":Landroid/content/Intent;
    .restart local v81    # "text":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;

    if-eqz v7, :cond_19

    move-object/from16 v72, p1

    .line 1794
    check-cast v72, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;

    .line 1795
    .local v72, "postal":Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;
    invoke-virtual/range {v72 .. v72}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getFormattedAddress()Ljava/lang/String;

    move-result-object v73

    .line 1796
    .local v73, "postalAddress":Ljava/lang/String;
    invoke-static/range {v73 .. v73}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 1797
    const v7, 0x7f0900f7

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    invoke-static/range {v73 .. v73}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v43

    .line 1799
    .local v43, "primaryIntent":Landroid/content/Intent;
    invoke-virtual/range {v72 .. v72}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getFormattedAddress()Ljava/lang/String;

    move-result-object v6

    .line 1800
    .local v6, "header":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1801
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    const v7, 0x7f090082

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v25

    .line 1802
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v26

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v28

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    .line 1800
    invoke-direct/range {v22 .. v28}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1803
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {v72 .. v72}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->hasKindTypeColumn()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 1805
    invoke-virtual/range {v72 .. v72}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getKindTypeColumn()I

    move-result v7

    invoke-virtual/range {v72 .. v72}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 1804
    move-object/from16 v0, v78

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1806
    .end local v81    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    move-object/from16 v0, v74

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    :goto_a
    move-object/from16 v0, v74

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    const v7, 0x7f02005e

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1810
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    const v42, 0x7f02005e

    .line 1813
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1814
    const v8, 0x7f090197

    .line 1813
    move-object/from16 v0, v78

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1814
    const-string/jumbo v8, " "

    .line 1813
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1815
    .local v26, "postalContentDescription":Ljava/lang/String;
    invoke-static/range {v73 .. v73}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressDirectionsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v25

    .line 1819
    .local v25, "postalIntent":Landroid/content/Intent;
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 1820
    const/16 v25, 0x0

    .line 1823
    .end local v25    # "postalIntent":Landroid/content/Intent;
    :cond_18
    new-instance v21, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    .line 1824
    const v7, 0x7f02004f

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 1823
    const/16 v22, 0x4

    .line 1825
    const v24, 0x7f02004f

    .line 1823
    invoke-direct/range {v21 .. v26}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1827
    .end local v9    # "text":Ljava/lang/String;
    .end local v26    # "postalContentDescription":Ljava/lang/String;
    .end local v72    # "postal":Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;
    .end local v73    # "postalAddress":Ljava/lang/String;
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .local v6, "header":Ljava/lang/String;
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    .local v43, "primaryIntent":Landroid/content/Intent;
    .restart local v81    # "text":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;

    if-eqz v7, :cond_1a

    .line 1828
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSipSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_29

    move-object/from16 v79, p1

    .line 1829
    check-cast v79, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;

    .line 1830
    .local v79, "sip":Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;
    invoke-virtual/range {v79 .. v79}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;->getSipAddress()Ljava/lang/String;

    move-result-object v48

    .line 1831
    .restart local v48    # "address":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 1832
    const v7, 0x7f0900cc

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1833
    const-string/jumbo v8, " "

    .line 1832
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    const-string/jumbo v7, "sip"

    const/4 v8, 0x0

    move-object/from16 v0, v48

    invoke-static {v7, v0, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v51

    .line 1835
    .local v51, "callUri":Landroid/net/Uri;
    const/4 v7, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-static {v0, v1, v7}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v43

    .line 1836
    .local v43, "primaryIntent":Landroid/content/Intent;
    move-object/from16 v6, v48

    .line 1837
    .local v6, "header":Ljava/lang/String;
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1838
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    const v7, 0x7f09007f

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v31

    .line 1839
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v32

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v34

    move-object/from16 v28, v4

    move-object/from16 v29, v6

    .line 1837
    invoke-direct/range {v28 .. v34}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1840
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {v79 .. v79}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;->hasKindTypeColumn()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1842
    invoke-virtual/range {v79 .. v79}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;->getKindTypeColumn()I

    move-result v7

    invoke-virtual/range {v79 .. v79}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 1841
    move-object/from16 v0, v78

    invoke-static {v0, v7, v8}, Landroid/provider/ContactsContract$CommonDataKinds$SipAddress;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1843
    .end local v81    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    move-object/from16 v0, v74

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    :goto_b
    move-object/from16 v0, v74

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    const v7, 0x7f02004e

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1847
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    const v42, 0x7f02004e

    goto/16 :goto_2

    .line 1850
    .end local v9    # "text":Ljava/lang/String;
    .end local v48    # "address":Ljava/lang/String;
    .end local v51    # "callUri":Landroid/net/Uri;
    .end local v79    # "sip":Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .local v6, "header":Ljava/lang/String;
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    .local v43, "primaryIntent":Landroid/content/Intent;
    .restart local v81    # "text":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    if-eqz v7, :cond_1c

    move-object/from16 v7, p1

    .line 1851
    check-cast v7, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v7}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getGivenName()Ljava/lang/String;

    move-result-object v58

    .line 1852
    .local v58, "givenName":Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 1853
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f09018f

    move-object/from16 v0, v78

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1854
    const-string/jumbo v8, " "

    .line 1853
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    iput-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;->value:Ljava/lang/String;

    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 1856
    .end local v9    # "text":Ljava/lang/String;
    :cond_1b
    const v7, 0x7f09018f

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    iput-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;->value:Ljava/lang/String;

    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .line 1860
    .end local v9    # "text":Ljava/lang/String;
    .end local v58    # "givenName":Ljava/lang/String;
    :cond_1c
    if-eqz p1, :cond_1d

    .line 1861
    sget-object v7, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataStringForHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    .line 1860
    if-eqz v7, :cond_1d

    .line 1864
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataStringForHeader()Ljava/lang/String;

    move-result-object v7

    .line 1863
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1862
    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1868
    .local v6, "header":Ljava/lang/String;
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataStringForDisplay()Ljava/lang/String;

    move-result-object v9

    .line 1869
    .end local v81    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    new-instance v43, Landroid/content/Intent;

    .end local v43    # "primaryIntent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.action.VIEW"

    move-object/from16 v0, v43

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1870
    .local v43, "primaryIntent":Landroid/content/Intent;
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v10

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v83

    .line 1871
    .local v83, "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    move-object/from16 v1, v83

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1873
    if-eqz v43, :cond_0

    .line 1874
    invoke-virtual/range {v43 .. v43}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v30

    .line 1877
    .local v30, "mimetype":Ljava/lang/String;
    const-string/jumbo v7, "vnd.android.cursor.item/vnd.googleplus.profile"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1879
    const-string/jumbo v7, "Add to circle"

    invoke-virtual/range {v43 .. v43}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1882
    const v7, 0x7f020036

    .line 1881
    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1883
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    const v42, 0x7f020036

    goto/16 :goto_2

    .line 1866
    .end local v9    # "text":Ljava/lang/String;
    .end local v30    # "mimetype":Ljava/lang/String;
    .end local v83    # "uri":Landroid/net/Uri;
    .local v6, "header":Ljava/lang/String;
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    .local v43, "primaryIntent":Landroid/content/Intent;
    .restart local v81    # "text":Ljava/lang/String;
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataStringForHeader()Ljava/lang/String;

    move-result-object v6

    .local v6, "header":Ljava/lang/String;
    goto :goto_c

    .line 1877
    .end local v81    # "text":Ljava/lang/String;
    .restart local v9    # "text":Ljava/lang/String;
    .restart local v30    # "mimetype":Ljava/lang/String;
    .local v43, "primaryIntent":Landroid/content/Intent;
    .restart local v83    # "uri":Landroid/net/Uri;
    :cond_1e
    const-string/jumbo v7, "vnd.android.cursor.item/vnd.googleplus.profile.comm"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1890
    const-string/jumbo v7, "Start video call"

    invoke-virtual/range {v43 .. v43}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1891
    const v7, 0x7f020057

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1892
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    const v42, 0x7f020057

    goto/16 :goto_2

    .line 1877
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    :cond_1f
    const-string/jumbo v7, "vnd.android.cursor.item/com.sonymobile.rcs.capability.im-session"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1906
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 1907
    const-string/jumbo v8, "data4"

    .line 1906
    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    .line 1908
    .local v82, "unreadMessagesText":Ljava/lang/String;
    if-eqz v82, :cond_20

    const-string/jumbo v7, "0"

    move-object/from16 v0, v82

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 1923
    .end local v82    # "unreadMessagesText":Ljava/lang/String;
    :cond_20
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1924
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v32

    .line 1925
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v34

    move-object/from16 v28, v4

    move-object/from16 v29, v6

    .line 1923
    invoke-direct/range {v28 .. v34}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1926
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-static/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v7

    .line 1927
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    .line 1926
    move-object/from16 v0, v43

    invoke-virtual {v7, v8, v0}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Ljava/lang/String;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1929
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v41, :cond_21

    .line 1930
    invoke-virtual/range {v41 .. v41}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1932
    :cond_21
    const/16 v38, 0x0

    goto/16 :goto_2

    .line 1885
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    :cond_22
    const v7, 0x7f020055

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1886
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    const v42, 0x7f020055

    goto/16 :goto_2

    .line 1894
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    :cond_23
    const v7, 0x7f020056

    move-object/from16 v0, v78

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1895
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    const v42, 0x7f020056

    goto/16 :goto_2

    .line 1909
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    .restart local v82    # "unreadMessagesText":Ljava/lang/String;
    :cond_24
    invoke-static/range {p2 .. p2}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v7

    .line 1910
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    .line 1909
    move-object/from16 v0, v43

    invoke-virtual {v7, v8, v0}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Ljava/lang/String;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    .line 1913
    .local v69, "originalIcon":Landroid/graphics/drawable/Drawable;
    sget-object v7, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;->TOP_END:Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;

    .line 1911
    move-object/from16 v0, p2

    move-object/from16 v1, v69

    move-object/from16 v2, v82

    invoke-static {v0, v1, v2, v7}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createCustomActionIconWithMessage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/util/ImageUtil$NotificationIconLocation;)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1914
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1915
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v32

    .line 1916
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v34

    move-object/from16 v28, v4

    move-object/from16 v29, v6

    .line 1914
    invoke-direct/range {v28 .. v34}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1917
    .local v4, "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    const/16 v38, 0x0

    .line 1920
    goto/16 :goto_2

    .line 1951
    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .end local v5    # "subHeader":Ljava/lang/String;
    .end local v6    # "header":Ljava/lang/String;
    .end local v30    # "mimetype":Ljava/lang/String;
    .end local v41    # "primaryIcon":Landroid/graphics/drawable/Drawable;
    .end local v43    # "primaryIntent":Landroid/content/Intent;
    .end local v69    # "originalIcon":Landroid/graphics/drawable/Drawable;
    .end local v82    # "unreadMessagesText":Ljava/lang/String;
    .end local v83    # "uri":Landroid/net/Uri;
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v7, v10, v12

    if-lez v7, :cond_26

    const/16 v32, -0x1

    .line 1953
    .local v32, "dataId":I
    :goto_d
    new-instance v31, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    .line 1954
    const/16 v39, 0x0

    move-object/from16 v33, v6

    move-object/from16 v34, v5

    move-object/from16 v36, v9

    move-object/from16 v40, v4

    .line 1953
    invoke-direct/range {v31 .. v40}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V

    .line 1956
    .local v31, "cardEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    new-instance v39, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    .line 1957
    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 1956
    const/16 v40, 0x0

    invoke-direct/range {v39 .. v44}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1959
    invoke-interface/range {v47 .. v47}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .local v46, "actionItem$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    .line 1960
    .local v45, "actionItem":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    move-object/from16 v0, v31

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->addActionItem(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;)V

    goto :goto_e

    .line 1951
    .end local v31    # "cardEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    .end local v32    # "dataId":I
    .end local v45    # "actionItem":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    .end local v46    # "actionItem$iterator":Ljava/util/Iterator;
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getId()J

    move-result-wide v10

    long-to-int v0, v10

    move/from16 v32, v0

    .restart local v32    # "dataId":I
    goto :goto_d

    .line 1963
    .restart local v31    # "cardEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    .restart local v46    # "actionItem$iterator":Ljava/util/Iterator;
    :cond_27
    return-object v31

    .end local v9    # "text":Ljava/lang/String;
    .end local v31    # "cardEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    .end local v32    # "dataId":I
    .end local v46    # "actionItem$iterator":Ljava/util/Iterator;
    .restart local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .restart local v5    # "subHeader":Ljava/lang/String;
    .restart local v6    # "header":Ljava/lang/String;
    .local v41, "primaryIcon":Landroid/graphics/drawable/Drawable;
    .restart local v43    # "primaryIntent":Landroid/content/Intent;
    .restart local v48    # "address":Ljava/lang/String;
    .restart local v51    # "callUri":Landroid/net/Uri;
    .restart local v79    # "sip":Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;
    .restart local v81    # "text":Ljava/lang/String;
    :cond_28
    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_b

    .end local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .end local v5    # "subHeader":Ljava/lang/String;
    .end local v6    # "header":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    .end local v43    # "primaryIntent":Landroid/content/Intent;
    .end local v48    # "address":Ljava/lang/String;
    .end local v51    # "callUri":Landroid/net/Uri;
    .end local v79    # "sip":Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;
    :cond_29
    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_2

    .end local v9    # "text":Ljava/lang/String;
    .restart local v4    # "entryContextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .restart local v5    # "subHeader":Ljava/lang/String;
    .restart local v6    # "header":Ljava/lang/String;
    .restart local v43    # "primaryIntent":Landroid/content/Intent;
    .restart local v72    # "postal":Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;
    .restart local v73    # "postalAddress":Ljava/lang/String;
    :cond_2a
    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_a

    .end local v9    # "text":Ljava/lang/String;
    .end local v72    # "postal":Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;
    .end local v73    # "postalAddress":Ljava/lang/String;
    .restart local v48    # "address":Ljava/lang/String;
    .restart local v55    # "email":Lcom/android/contacts/common/model/dataitem/EmailDataItem;
    .restart local v64    # "mailUri":Landroid/net/Uri;
    :cond_2b
    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_9

    .end local v9    # "text":Ljava/lang/String;
    .end local v48    # "address":Ljava/lang/String;
    .end local v55    # "email":Lcom/android/contacts/common/model/dataitem/EmailDataItem;
    .end local v64    # "mailUri":Landroid/net/Uri;
    .local v43, "primaryIntent":Landroid/content/Intent;
    .restart local v70    # "phone":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    :cond_2c
    move-object/from16 v9, v81

    .restart local v9    # "text":Ljava/lang/String;
    goto/16 :goto_5

    .line 1725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private dataItemsToEntries(Lcom/android/contacts/common/model/Contact;Ljava/util/List;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;
    .locals 9
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;
    .param p3, "aboutCardTitleOut"    # Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/Contact;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;",
            "Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1979
    .local p2, "dataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1980
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "dataItem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 1982
    .local v1, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusEnabledNumbers:Ljava/util/Set;

    move-object v0, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    .line 1981
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemToEntry(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;Lcom/android/contacts/common/model/Contact;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;Ljava/util/Set;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    move-result-object v8

    .line 1983
    .local v8, "entry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    instance-of v0, v1, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    if-eqz v0, :cond_1

    .line 1984
    check-cast v1, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    .end local v1    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getGivenName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusTutorialCardName:Ljava/lang/String;

    .line 1986
    :cond_1
    if-eqz v8, :cond_0

    .line 1987
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1990
    .end local v8    # "entry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    :cond_2
    return-object v7
.end method

.method private doPickRingtone()V
    .locals 2

    .prologue
    .line 2492
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCustomRingtone:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->createSetCustomRingtoneIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2494
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2491
    return-void
.end method

.method private doesCardEntriesContainsPhoneticName(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cardEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;>;"
    const/4 v6, 0x0

    .line 1123
    if-nez p1, :cond_0

    .line 1124
    return v6

    .line 1126
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cardEntry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1127
    .local v2, "cardEntry":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    .line 1128
    .local v0, "c":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    const v4, 0x7f090111

    invoke-virtual {p0, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1129
    const/4 v4, 0x1

    return v4

    .line 1133
    .end local v0    # "c":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    .end local v2    # "cardEntry":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    :cond_3
    return v6
.end method

.method private editContact(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 2249
    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    .line 2250
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/common/model/ContactLoader;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ContactLoader;->cacheResult()V

    .line 2251
    invoke-virtual {p0, p1, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2248
    return-void
.end method

.method private generateDataModelFromContact(Lcom/android/contacts/common/model/Contact;[Ljava/lang/String;)Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
    .locals 35
    .param p1, "data"    # Lcom/android/contacts/common/model/Contact;
    .param p2, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    .line 1346
    const-string/jumbo v32, "Build data items map"

    invoke-static/range {v32 .. v32}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1348
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1350
    .local v13, "dataItemsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_4

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/contacts/common/model/RawContact;

    .line 1352
    .local v28, "rawContact":Lcom/android/contacts/common/model/RawContact;
    const-string/jumbo v32, "com.gsma.rcs"

    invoke-virtual/range {v28 .. v28}, Lcom/android/contacts/common/model/RawContact;->getAccountType()Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 1356
    invoke-virtual/range {v28 .. v28}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "dataItem$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 1357
    .local v8, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual/range {v28 .. v28}, Lcom/android/contacts/common/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/common/model/dataitem/DataItem;->setRawContactId(J)V

    .line 1359
    invoke-virtual {v8}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v21

    .line 1360
    .local v21, "mimeType":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 1362
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v32

    .line 1363
    invoke-virtual/range {v28 .. v28}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v28 .. v28}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v34

    .line 1362
    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v14

    .line 1364
    .local v14, "dataKind":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz v14, :cond_1

    .line 1369
    invoke-virtual {v8}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_3

    const/16 v16, 0x0

    .line 1371
    .local v16, "hasData":Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1

    if-eqz v16, :cond_1

    .line 1373
    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 1374
    .local v10, "dataItemListByType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    if-nez v10, :cond_2

    .line 1375
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "dataItemListByType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1376
    .restart local v10    # "dataItemListByType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    move-object/from16 v0, v21

    invoke-interface {v13, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    :cond_2
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1369
    .end local v10    # "dataItemListByType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .end local v16    # "hasData":Z
    :cond_3
    const/16 v16, 0x1

    .restart local v16    # "hasData":Z
    goto :goto_1

    .line 1381
    .end local v8    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    .end local v9    # "dataItem$iterator":Ljava/util/Iterator;
    .end local v14    # "dataKind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v16    # "hasData":Z
    .end local v21    # "mimeType":Ljava/lang/String;
    .end local v28    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1387
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getEnableSimPhoneNumberAutoLoading()Z

    move-result v32

    if-nez v32, :cond_9

    .line 1388
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v32

    if-nez v32, :cond_9

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/contacts/util/ContactLoaderUtils;->isProfileUri(Landroid/net/Uri;)Z

    move-result v32

    .line 1387
    if-eqz v32, :cond_9

    .line 1390
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getLine1Number(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    .line 1391
    .local v24, "number":Ljava/lang/String;
    if-eqz v24, :cond_9

    .line 1392
    const/16 v19, 0x0

    .line 1393
    .local v19, "isMySelfNumberExists":Z
    const/16 v27, 0x1

    .line 1394
    .local v27, "primarySettings":I
    const-string/jumbo v32, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v32

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    .line 1395
    .local v26, "phoneDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    if-eqz v26, :cond_a

    .line 1396
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "dataItem$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/dataitem/DataItem;

    .restart local v8    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    move-object/from16 v25, v8

    .line 1397
    check-cast v25, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    .line 1398
    .local v25, "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    invoke-virtual/range {v25 .. v25}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v32

    .line 1399
    const/16 v33, 0x0

    .line 1398
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 1400
    const/16 v19, 0x1

    .line 1402
    :cond_6
    invoke-virtual/range {v25 .. v25}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->isPrimary()Z

    move-result v32

    if-eqz v32, :cond_5

    .line 1405
    const/16 v27, 0x0

    goto :goto_2

    .line 1408
    .end local v8    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    .end local v25    # "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    :cond_7
    if-nez v19, :cond_8

    .line 1409
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->createDataItem(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/contacts/common/model/dataitem/DataItem;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1418
    .end local v9    # "dataItem$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_3
    const-string/jumbo v32, "vnd.android.cursor.item/name"

    move-object/from16 v0, v32

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    if-nez v32, :cond_9

    .line 1419
    const-string/jumbo v32, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v32

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    if-nez v32, :cond_9

    .line 1420
    if-eqz v19, :cond_b

    .line 1431
    .end local v19    # "isMySelfNumberExists":Z
    .end local v24    # "number":Ljava/lang/String;
    .end local v26    # "phoneDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .end local v27    # "primarySettings":I
    :cond_9
    :goto_4
    const-string/jumbo v32, "sort within mimetypes"

    invoke-static/range {v32 .. v32}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1438
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1439
    .local v12, "dataItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;>;"
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "mimeTypeDataItems$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    .line 1441
    .local v22, "mimeTypeDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;Landroid/content/Context;)V

    .line 1443
    sget-object v32, Lcom/android/contacts/quickcontact/QuickContactActivity;->WITHIN_MIMETYPE_DATAITEM_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1445
    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1413
    .end local v12    # "dataItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;>;"
    .end local v22    # "mimeTypeDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .end local v23    # "mimeTypeDataItems$iterator":Ljava/util/Iterator;
    .restart local v19    # "isMySelfNumberExists":Z
    .restart local v24    # "number":Ljava/lang/String;
    .restart local v26    # "phoneDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .restart local v27    # "primarySettings":I
    :cond_a
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    const/16 v27, 0x1

    .line 1415
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->createDataItem(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/contacts/common/model/dataitem/DataItem;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1416
    const-string/jumbo v32, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1420
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    :cond_b
    const/16 v32, 0x1

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 1421
    new-instance v32, Lcom/android/contacts/quickcontact/QuickContactActivity$15;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity$15;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1447
    .end local v19    # "isMySelfNumberExists":Z
    .end local v24    # "number":Ljava/lang/String;
    .end local v26    # "phoneDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .end local v27    # "primarySettings":I
    .restart local v12    # "dataItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;>;"
    .restart local v23    # "mimeTypeDataItems$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1449
    const-string/jumbo v32, "sort amongst mimetypes"

    invoke-static/range {v32 .. v32}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1451
    sget-object v32, Lcom/android/contacts/quickcontact/QuickContactActivity;->AMONGST_MIMETYPE_DATAITEM_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v32

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1452
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1454
    const-string/jumbo v32, "extract unique phone numbers"

    invoke-static/range {v32 .. v32}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1455
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v31

    .line 1456
    .local v31, "uniquePhoneNumberSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v32, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v32

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    .line 1457
    .restart local v26    # "phoneDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    if-eqz v26, :cond_d

    .line 1458
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "dataItem$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/dataitem/DataItem;

    .restart local v8    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    move-object/from16 v25, v8

    .line 1459
    check-cast v25, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    .line 1460
    .restart local v25    # "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    invoke-virtual/range {v25 .. v25}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1463
    .end local v8    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    .end local v9    # "dataItem$iterator":Ljava/util/Iterator;
    .end local v25    # "phoneDataItem":Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
    :cond_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1465
    const-string/jumbo v32, "cp2 data items to entries"

    invoke-static/range {v32 .. v32}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1467
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    .local v6, "contactCardEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;>;"
    sget-object v32, Lcom/android/contacts/quickcontact/QuickContactActivity;->SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;

    const/16 v33, 0x0

    .line 1468
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->buildCardEntries(Lcom/android/contacts/common/model/Contact;Ljava/util/Map;Ljava/util/Collection;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;

    move-result-object v4

    .line 1471
    .local v4, "aboutCardEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;>;"
    sget-object v32, Lcom/android/contacts/quickcontact/QuickContactActivity;->IMPORTANT_CARD_MIMETYPES:Ljava/util/List;

    const/16 v33, 0x0

    .line 1470
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->buildCardEntries(Lcom/android/contacts/common/model/Contact;Ljava/util/Map;Ljava/util/Collection;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;

    move-result-object v18

    .line 1472
    .local v18, "importantCardEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;>;"
    new-instance v5, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;

    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-direct {v5, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)V

    .line 1474
    .local v5, "aboutCardName":Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    .line 1475
    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1476
    .local v11, "dataItemsByMimeType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 1477
    .local v30, "topDataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual/range {v30 .. v30}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v21

    .line 1478
    .restart local v21    # "mimeType":Ljava/lang/String;
    sget-object v32, Lcom/android/contacts/quickcontact/QuickContactActivity;->SORTED_ABOUT_CARD_MIMETYPES:Ljava/util/List;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_e

    .line 1479
    sget-object v32, Lcom/android/contacts/quickcontact/QuickContactActivity;->EXTRA_TITLE_INFORMATION_MIMETYPES:Ljava/util/List;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v32

    .line 1478
    if-nez v32, :cond_e

    .line 1480
    sget-object v32, Lcom/android/contacts/quickcontact/QuickContactActivity;->IMPORTANT_CARD_MIMETYPES:Ljava/util/List;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v32

    .line 1478
    if-eqz v32, :cond_f

    .line 1474
    :cond_e
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1484
    :cond_f
    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->dataItemsToEntries(Lcom/android/contacts/common/model/Contact;Ljava/util/List;Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;)Ljava/util/List;

    move-result-object v7

    .line 1486
    .local v7, "contactEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_e

    .line 1487
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1492
    .end local v7    # "contactEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    .end local v11    # "dataItemsByMimeType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .end local v21    # "mimeType":Ljava/lang/String;
    .end local v30    # "topDataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    :cond_10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1494
    new-instance v15, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-direct {v15, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    .line 1495
    .local v15, "dataModel":Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;
    iget-object v0, v5, Lcom/android/contacts/quickcontact/QuickContactActivity$MutableString;->value:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput-object v0, v15, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->customAboutCardName:Ljava/lang/String;

    .line 1496
    iput-object v4, v15, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->aboutCardEntries:Ljava/util/List;

    .line 1497
    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->importantCardEntries:Ljava/util/List;

    .line 1498
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getExtraInformationString(Lcom/android/contacts/common/model/Contact;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v15, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->extraTitleInformation:Ljava/lang/String;

    .line 1499
    iput-object v6, v15, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->contactCardEntries:Ljava/util/List;

    .line 1500
    move-object/from16 v0, v31

    iput-object v0, v15, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->uniquePhoneNumbers:Ljava/util/Set;

    .line 1503
    return-object v15
.end method

.method private getEditContactIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2225
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2226
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->isIceContact()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2227
    const-string/jumbo v1, "editIceContact"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2229
    :cond_0
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2230
    return-object v0
.end method

.method private getEditContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2241
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getEditContactIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2242
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2243
    const-string/jumbo v1, "addMimeType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2245
    :cond_0
    return-object v0
.end method

.method private getExtraInformationString(Lcom/android/contacts/common/model/Contact;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/Contact;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataItem;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1056
    .local p2, "dataItemsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;>;"
    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity;->EXTRA_TITLE_INFORMATION_MIMETYPES:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "mimetype$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1057
    .local v2, "mimetype":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1058
    .local v1, "mimeTypeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1061
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 1062
    .local v0, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    const-string/jumbo v4, "vnd.android.cursor.item/vnd.somc.support.openinghours"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1064
    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataStringForHeader()Ljava/lang/String;

    move-result-object v4

    .line 1065
    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->buildDataStringForDisplay()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\n"

    .line 1064
    invoke-direct {p0, v4, v5, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->concatenateExtraInformationString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1067
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported mimetype: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1070
    .end local v0    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    .end local v1    # "mimeTypeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataItem;>;"
    .end local v2    # "mimetype":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    return-object v4
.end method

.method private getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 2286
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2287
    .local v1, "uriBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "uri_to_authorize"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2288
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2289
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 2290
    const-string/jumbo v4, "authorize"

    .line 2288
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2293
    .local v0, "authResponse":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2295
    const-string/jumbo v2, "authorized_uri"

    .line 2294
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    return-object v2

    .line 2297
    :cond_0
    return-object p1
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 3
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 2498
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2499
    :cond_0
    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCustomRingtone:Ljava/lang/String;

    .line 2504
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCustomRingtone:Ljava/lang/String;

    .line 2503
    invoke-static {p0, v1, v2}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2505
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2497
    return-void

    .line 2501
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeNoContactDetailCard()V
    .locals 24

    .prologue
    .line 1249
    const v23, 0x7f02003c

    .line 1250
    .local v23, "phoneIconResourceId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 1252
    .local v22, "phoneIcon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    .line 1253
    const v3, 0x7f090198

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1252
    const/4 v2, -0x2

    .line 1254
    const/4 v4, 0x0

    .line 1255
    const/4 v5, 0x0

    .line 1256
    const/4 v6, 0x1

    .line 1257
    const/4 v7, 0x0

    .line 1258
    const/4 v8, 0x0

    .line 1252
    invoke-direct/range {v1 .. v8}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V

    .line 1261
    .local v1, "phonePromptEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    .line 1260
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getEditContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1262
    .local v6, "addNumberIntent":Landroid/content/Intent;
    new-instance v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    const/4 v3, 0x0

    .line 1263
    const v5, 0x7f02003c

    const/4 v7, 0x0

    move-object/from16 v4, v22

    .line 1262
    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1264
    .local v2, "phonePromptItem":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->addActionItem(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;)V

    .line 1267
    const v21, 0x7f020052

    .line 1268
    .local v21, "emailIconResourceId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 1270
    .local v20, "emailIcon":Landroid/graphics/drawable/Drawable;
    new-instance v7, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    .line 1271
    const v3, 0x7f090199

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1270
    const/4 v8, -0x2

    .line 1272
    const/4 v10, 0x0

    .line 1273
    const/4 v11, 0x0

    .line 1274
    const/4 v12, 0x1

    .line 1275
    const/4 v13, 0x0

    .line 1276
    const/4 v14, 0x0

    .line 1270
    invoke-direct/range {v7 .. v14}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V

    .line 1279
    .local v7, "emailPromptEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    .line 1278
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getEditContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 1280
    .local v12, "addEmailIntent":Landroid/content/Intent;
    new-instance v8, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    const/4 v9, 0x0

    .line 1281
    const v11, 0x7f020052

    const/4 v13, 0x0

    move-object/from16 v10, v20

    .line 1280
    invoke-direct/range {v8 .. v13}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;-><init>(ILandroid/graphics/drawable/Drawable;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1282
    .local v8, "emailPromptItem":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;
    invoke-virtual {v7, v8}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->addActionItem(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;)V

    .line 1284
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v14, "promptEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    move-object/from16 v19, v0

    .line 1290
    const/4 v15, 0x2

    const/16 v16, 0x1

    .line 1291
    const/16 v17, 0x1

    .line 1290
    invoke-virtual/range {v13 .. v19}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    .line 1247
    return-void
.end method

.method private initializeVilteSwitchCard()V
    .locals 2

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v0

    .line 1241
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVideoCallSwitchCard:Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->initialize(Z)V

    .line 1239
    return-void

    .line 1240
    :cond_0
    const/4 v0, 0x0

    .local v0, "isSwitchCardUsed":Z
    goto :goto_0
.end method

.method private isContactCanCreateShortcut()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2360
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isContactCanSetRingtone()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2355
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 2356
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsVoiceCapable:Z

    .line 2355
    if-eqz v1, :cond_0

    .line 2356
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->isSimContact()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isContactCopyable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2587
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    .line 2588
    .local v1, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getAccountType()Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 2589
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->areContactsCopyable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2593
    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/contacts/common/model/account/ExchangeAccountType;->isExchangeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2595
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2596
    return v4

    .line 2590
    :cond_1
    return v4

    .line 2600
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getDirectoryExportSupport()I

    move-result v3

    if-nez v3, :cond_0

    .line 2601
    return v4

    .line 2605
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method private isContactDeletable()Z
    .locals 1

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isSdnContact()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isContactEditable()Z
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isContactLinkable()Z
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isAdnContact()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isSdnContact()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v0

    .line 2198
    if-nez v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v0

    .line 2198
    if-nez v0, :cond_0

    .line 2200
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isChameleonPreloadContact()Z

    move-result v0

    .line 2198
    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isContactReadOnly()Z
    .locals 4

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/Contact;->getFirstWritableRawContactId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContactShareable()Z
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMimeExcluded([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "excludeMimes"    # [Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 983
    if-nez p1, :cond_0

    return v2

    .line 984
    :cond_0
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    .line 985
    .local v0, "excludedMime":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 986
    const/4 v1, 0x1

    return v1

    .line 984
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 989
    .end local v0    # "excludedMime":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method private isNeedToHideSetDefaultOption(Lcom/android/contacts/common/model/dataitem/DataItem;)Z
    .locals 5
    .param p1, "item"    # Lcom/android/contacts/common/model/dataitem/DataItem;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1320
    if-nez p1, :cond_0

    .line 1321
    return v3

    .line 1323
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1330
    .local v0, "contentvalues":Landroid/content/ContentValues;
    if-eqz v0, :cond_1

    const-string/jumbo v4, "key_hide_set_default_option"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1333
    const-string/jumbo v4, "key_hide_set_default_option"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1334
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_0
    return v2

    .line 1331
    .end local v1    # "value":Ljava/lang/Integer;
    :cond_1
    return v3

    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_2
    move v2, v3

    .line 1334
    goto :goto_0
.end method

.method private isShortcutCreatable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2347
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2348
    .local v0, "createShortcutIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2349
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2351
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isSupportContact()Z
    .locals 1

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/Contact;->isSupportContact(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private populateContactAndAboutCard(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V
    .locals 18
    .param p1, "cp2DataCardModel"    # Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    .prologue
    .line 1137
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCachedCp2DataCardModel:Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    .line 1138
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 1139
    :cond_0
    return-void

    .line 1141
    :cond_1
    const-string/jumbo v2, "bind contact card"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1143
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->contactCardEntries:Ljava/util/List;

    .line 1144
    .local v3, "contactCardEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->aboutCardEntries:Ljava/util/List;

    .line 1145
    .local v14, "aboutCardEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->importantCardEntries:Ljava/util/List;

    move-object/from16 v16, v0

    .line 1146
    .local v16, "importantCardEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->customAboutCardName:Ljava/lang/String;

    .line 1148
    .local v15, "customAboutCardName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;->extraTitleInformation:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/contacts/widget/MultiShrinkScroller;->setExtraTitleInformation(Ljava/lang/String;)V

    .line 1149
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    .line 1152
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->isExpanded()Z

    move-result v5

    .line 1154
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    .line 1155
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 1151
    const/4 v4, 0x3

    .line 1153
    const/4 v6, 0x0

    .line 1150
    invoke-virtual/range {v2 .. v8}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    .line 1160
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1162
    const-string/jumbo v2, "bind about card"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/Contact;->getPhoneticName()Ljava/lang/String;

    move-result-object v5

    .line 1165
    .local v5, "phoneticName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1166
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/quickcontact/QuickContactActivity;->doesCardEntriesContainsPhoneticName(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1195
    :cond_2
    :goto_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-virtual {v2, v15}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setTitle(Ljava/lang/String;)V

    .line 1199
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1200
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    .line 1204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    .line 1205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 1201
    const/4 v9, 0x1

    .line 1202
    const/4 v10, 0x1

    .line 1203
    const/4 v11, 0x1

    move-object v8, v14

    .line 1200
    invoke-virtual/range {v7 .. v13}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    .line 1213
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowImportantCard:Z

    if-eqz v2, :cond_8

    .line 1214
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mImportantCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    .line 1218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    .line 1219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 1215
    const/4 v9, 0x1

    .line 1216
    const/4 v10, 0x1

    .line 1217
    const/4 v11, 0x1

    move-object/from16 v8, v16

    .line 1214
    invoke-virtual/range {v7 .. v13}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mImportantCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    .line 1225
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1226
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->initializeNoContactDetailCard()V

    .line 1231
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->initializeVilteSwitchCard()V

    .line 1233
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1136
    return-void

    .line 1158
    .end local v5    # "phoneticName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1167
    .restart local v5    # "phoneticName":Ljava/lang/String;
    :cond_5
    new-instance v4, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .line 1168
    const v2, 0x7f090111

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1170
    const-wide/16 v8, -0x1

    .line 1169
    const/4 v7, 0x0

    .line 1171
    const/4 v10, 0x0

    .line 1167
    invoke-direct/range {v4 .. v10}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1173
    .local v4, "contextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    new-instance v6, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    .line 1175
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f090111

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1174
    const/4 v7, -0x1

    .line 1177
    const/4 v10, 0x0

    .line 1178
    const/4 v11, 0x0

    .line 1179
    const/4 v12, 0x0

    move-object v9, v5

    move-object v13, v4

    .line 1173
    invoke-direct/range {v6 .. v13}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;)V

    .line 1182
    .local v6, "phoneticEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    new-instance v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;

    invoke-direct {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;-><init>()V

    invoke-virtual {v6, v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->addActionItem(Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ActionItem;)V

    .line 1184
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    .local v17, "phoneticList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;->getHeader()Ljava/lang/String;

    move-result-object v2

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090192

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1187
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1189
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v14, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1191
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v14, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1210
    .end local v4    # "contextMenuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    .end local v6    # "phoneticEntry":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;
    .end local v17    # "phoneticList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/ExpandingEntryCardView$CardEntry;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1222
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mImportantCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1228
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 923
    if-nez p1, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    .line 925
    return-void

    .line 927
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 930
    .local v1, "lookupUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    const-string/jumbo v3, "contacts"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 931
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 932
    .local v4, "rawContactId":J
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 933
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 932
    invoke-static {v3, v6}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 935
    .end local v4    # "rawContactId":J
    :cond_1
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 936
    const/4 v0, 0x4

    .line 937
    .local v0, "defaultExtraMode":I
    :goto_0
    const-string/jumbo v3, "android.provider.extra.MODE"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    .line 938
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 940
    .local v2, "oldLookupUri":Landroid/net/Uri;
    const-string/jumbo v3, "missing lookupUri"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 941
    const-string/jumbo v3, "android.provider.extra.EXCLUDE_MIMES"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .line 942
    if-nez v2, :cond_4

    .line 943
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    .line 944
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderContactCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 943
    invoke-virtual {v3, v8, v7, v6}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ContactLoader;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/common/model/ContactLoader;

    .line 950
    :cond_2
    :goto_1
    const-string/jumbo v3, "showImportantCard"

    const/4 v6, 0x1

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowImportantCard:Z

    .line 951
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/contacts/NfcHandler;->register(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 922
    return-void

    .line 936
    .end local v0    # "defaultExtraMode":I
    .end local v2    # "oldLookupUri":Landroid/net/Uri;
    :cond_3
    const/4 v0, 0x3

    .restart local v0    # "defaultExtraMode":I
    goto :goto_0

    .line 945
    .restart local v2    # "oldLookupUri":Landroid/net/Uri;
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    if-eq v2, v3, :cond_2

    .line 946
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    .line 947
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderContactCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 946
    invoke-virtual {v3, v8, v7, v6}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ContactLoader;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/common/model/ContactLoader;

    goto :goto_1
.end method

.method private runEntranceAnimation()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 955
    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    if-eqz v1, :cond_0

    .line 956
    return-void

    .line 958
    :cond_0
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    .line 959
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollUpForEntranceAnimation(Z)V

    .line 954
    return-void

    .line 959
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendActionsToGa(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x0

    const v2, 0x7f0901cc

    .line 2808
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2810
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 2811
    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2812
    const v2, 0x7f0901d2

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 2810
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2807
    :cond_0
    :goto_0
    return-void

    .line 2808
    :cond_1
    const-string/jumbo v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2816
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 2817
    .local v6, "dataScheme":Ljava/lang/String;
    const-string/jumbo v0, "smsto"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2818
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 2819
    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2820
    const v2, 0x7f0901d3

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2821
    const-string/jumbo v3, ""

    .line 2818
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 2808
    .end local v6    # "dataScheme":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2830
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 2831
    .local v7, "intentType":Ljava/lang/String;
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.somc.support.chat"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2832
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 2833
    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2834
    const v2, 0x7f0901d5

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2835
    const-string/jumbo v3, ""

    .line 2832
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 2822
    .end local v7    # "intentType":Ljava/lang/String;
    .restart local v6    # "dataScheme":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "mailto"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2823
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 2824
    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2825
    const v2, 0x7f0901d4

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2826
    const-string/jumbo v3, ""

    .line 2823
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 2836
    .end local v6    # "dataScheme":Ljava/lang/String;
    .restart local v7    # "intentType":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.somc.support.try_first"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2838
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v0

    .line 2839
    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2840
    const v2, 0x7f0901d6

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2841
    const-string/jumbo v3, ""

    .line 2838
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method private setHeaderNameText(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 964
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTitle(Ljava/lang/String;)V

    .line 963
    :cond_0
    return-void

    .line 965
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setHeaderNameText(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 971
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v0, p1}, Lcom/android/contacts/widget/MultiShrinkScroller;->setTitle(Ljava/lang/String;)V

    .line 970
    :cond_0
    return-void
.end method

.method private setIconForRcsContact()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2623
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/Contact;->isTapiRcsCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2624
    const v2, 0x7f020079

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2633
    .local v1, "rcsJoynIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    const v2, 0x7f0e01f8

    invoke-virtual {p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2634
    .local v0, "largeTitle":Landroid/widget/TextView;
    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2621
    return-void

    .line 2625
    .end local v0    # "largeTitle":Landroid/widget/TextView;
    .end local v1    # "rcsJoynIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/Contact;->isRcseCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2626
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2628
    const-string/jumbo v3, "com.sonymobile.rcs"

    .line 2627
    const/4 v4, 0x5

    invoke-static {v4, p0, v3}, Lcom/android/contacts/common/util/BitmapUtil;->getRCSeCapableIcon(ILandroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2626
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v1    # "rcsJoynIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 2630
    .end local v1    # "rcsJoynIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private setThemeColor()V
    .locals 4

    .prologue
    const v3, 0x7f080031

    .line 2021
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2022
    const v2, 0x1010433

    .line 2021
    invoke-static {v1, v2, v3}, Lcom/android/contacts/util/ThemeUtils;->getThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 2023
    .local v0, "primaryColor":I
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v1, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->setHeaderTintColor(I)V

    .line 2024
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2025
    const v2, 0x1010434

    .line 2024
    invoke-static {v1, v2, v3}, Lcom/android/contacts/util/ThemeUtils;->getThemeColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStatusBarColor:I

    .line 2026
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateStatusBarColor()V

    .line 2020
    return-void
.end method

.method private shareContact()V
    .locals 8

    .prologue
    .line 2302
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/common/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    .line 2303
    .local v4, "lookupKey":Ljava/lang/String;
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v6, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2304
    .local v5, "shareUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2308
    invoke-direct {p0, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 2311
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2312
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "text/x-vcard"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2313
    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2316
    const v6, 0x7f0902a7

    invoke-virtual {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2317
    .local v1, "chooseTitle":Ljava/lang/CharSequence;
    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2320
    .local v0, "chooseIntent":Landroid/content/Intent;
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    .line 2321
    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2301
    :goto_0
    return-void

    .line 2322
    :catch_0
    move-exception v2

    .line 2323
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    const v6, 0x7f0902a8

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1024
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v0, v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 1027
    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$14;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$14;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 1026
    invoke-static {v0, v2, v1}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 1023
    :cond_0
    return-void
.end method

.method private showCallPlusTutorialIfNeeded()V
    .locals 2

    .prologue
    .line 2793
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusEnabledNumbers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2792
    :cond_0
    :goto_0
    return-void

    .line 2795
    :cond_1
    const/4 v0, 0x1

    .line 2794
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getShowQuickContactCallPlusTutorialCard(Landroid/content/Context;Z)Z

    move-result v0

    .line 2793
    if-eqz v0, :cond_0

    .line 2796
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v0

    .line 2793
    if-eqz v0, :cond_0

    .line 2797
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$19;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$19;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private showSelectBackupAccountDialog(Z)V
    .locals 3
    .param p1, "isStartedForSim"    # Z

    .prologue
    .line 2582
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->newInstance(Z)Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;

    move-result-object v0

    .line 2583
    .local v0, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2580
    return-void
.end method

.method private startDialActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2613
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2614
    const-string/jumbo v2, "internal_intent"

    const/4 v3, 0x1

    .line 2613
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 2615
    .local v0, "editBeforeCallIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 2612
    return-void
.end method

.method private toggleStar(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "starredMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 2256
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-eqz v3, :cond_0

    .line 2260
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    .line 2270
    .local v2, "isStarred":Z
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 2269
    :goto_0
    invoke-static {p0, v4, v3}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    .line 2271
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2273
    if-nez v2, :cond_2

    .line 2274
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2278
    .local v0, "accessibilityText":Ljava/lang/CharSequence;
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v3, v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2254
    .end local v0    # "accessibilityText":Ljava/lang/CharSequence;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isStarred":Z
    :cond_0
    return-void

    .line 2270
    .restart local v2    # "isStarred":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2275
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "accessibilityText":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private updateCallComposerAccordingToCapabilities()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2737
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-nez v0, :cond_0

    .line 2739
    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Contact data not loaded yet,, ignore capability check."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    return-void

    .line 2742
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusCapabilityChecker:Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;

    if-eqz v0, :cond_1

    .line 2743
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusCapabilityChecker:Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->cancel(Z)Z

    .line 2745
    :cond_1
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusCapabilityChecker:Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;

    .line 2746
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusCapabilityChecker:Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2736
    return-void
.end method

.method private updateStatusBarColor()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2030
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-nez v2, :cond_0

    .line 2031
    return-void

    .line 2035
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v2}, Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollNeededToBeFullScreen()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2036
    iget v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStatusBarColor:I

    .line 2041
    .local v1, "desiredStatusBarColor":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string/jumbo v3, "statusBarColor"

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 2042
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getStatusBarColor()I

    move-result v5

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v1, v4, v5

    .line 2041
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2043
    .local v0, "animation":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2044
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 2045
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2029
    return-void

    .line 2038
    .end local v0    # "animation":Landroid/animation/ObjectAnimator;
    .end local v1    # "desiredStatusBarColor":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "desiredStatusBarColor":I
    goto :goto_0
.end method

.method private updateVideoCallIcon()V
    .locals 4

    .prologue
    .line 1107
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 1108
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .line 1107
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v1

    .line 1109
    .local v1, "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1111
    .local v0, "enabled":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVideoCallingEnabled:Z

    if-eq v0, v2, :cond_0

    .line 1112
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->onVideoCallEntityChange()V

    .line 1113
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVideoCallingEnabled:Z

    .line 1106
    :cond_0
    return-void

    .line 1109
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 744
    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/interactions/TouchPointManager;->setPoint(II)V

    .line 746
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2131
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->finish()V

    .line 2134
    invoke-virtual {p0, v0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->overridePendingTransition(II)V

    .line 2130
    return-void
.end method

.method public onAccountSelectedForBackup(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->createCopy(Ljava/util/ArrayList;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/content/Context;)V

    .line 2530
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 899
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 900
    return-void

    .line 903
    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 904
    const-string/jumbo v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 905
    .local v0, "pickedUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->handleRingtonePicked(Landroid/net/Uri;)V

    .line 898
    .end local v0    # "pickedUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 906
    :cond_2
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 907
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldChangeCallPlusTutorialText:Z

    .line 908
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-eqz v1, :cond_1

    .line 909
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showCallPlusTutorial()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_1

    .line 2121
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsExitAnimationInProgress:Z

    if-nez v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->scrollOffBottom()V

    .line 2119
    :cond_0
    :goto_0
    return-void

    .line 2125
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChange(Z)V
    .locals 3
    .param p1, "isVilteSupportChanged"    # Z

    .prologue
    .line 2510
    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called onConfigurationChange():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    if-eqz p1, :cond_1

    .line 2512
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->onVideoCallEntityChange()V

    .line 2513
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 2514
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;->QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;

    .line 2513
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getVideoCallVisibility(Lcom/sonyericsson/android/socialphonebook/vilte/VideoCallEntityType;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v0

    .line 2515
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->NORMAL:Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    .line 2513
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVideoCallingEnabled:Z

    .line 2509
    :goto_1
    return-void

    .line 2513
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2517
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->initializeVilteSwitchCard()V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 576
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .local v2, "menuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    invoke-interface {v4, p1}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    return v6

    .line 577
    .end local v2    # "menuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/ClassCastException;
    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "bad menuInfo"

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    const/4 v4, 0x0

    return v4

    .line 586
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "menuInfo":Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 605
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown menu option "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 588
    :pswitch_0
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyText()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v6}, Lcom/android/contacts/common/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 590
    return v6

    .line 593
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getId()J

    move-result-wide v4

    .line 592
    invoke-static {p0, v4, v5}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 594
    .local v3, "setIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 595
    return v6

    .line 598
    .end local v3    # "setIntent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getId()J

    move-result-wide v4

    .line 597
    invoke-static {p0, v4, v5}, Lcom/android/contacts/ContactSaveService;->createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 599
    .local v0, "clearIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 600
    return v6

    .line 602
    .end local v0    # "clearIntent":Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->removeLtrDirection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startDialActivity(Ljava/lang/String;)V

    .line 603
    return v6

    .line 586
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v6, 0x20000

    const/4 v9, 0x4

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 751
    const-string/jumbo v3, "onCreate()"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 752
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 754
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 755
    return-void

    .line 758
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 760
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->processIntent(Landroid/content/Intent;)V

    .line 763
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 766
    const v3, 0x7f0400b9

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setContentView(I)V

    .line 768
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusEnabledNumbers:Ljava/util/Set;

    .line 769
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsVoiceCapable:Z

    .line 771
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    invoke-static {p0, v3}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;->newInstance(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;)Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    .line 773
    const v3, 0x7f0e01df

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/widget/MultiShrinkScroller;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 775
    const v3, 0x7f0e01e7

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVideoCallSwitchCard:Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;

    .line 776
    const v3, 0x7f0e01e9

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    .line 777
    const v3, 0x7f0e01e8

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    .line 778
    const v3, 0x7f0e01ea

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    .line 779
    const v3, 0x7f0e01e6

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mImportantCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    .line 781
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mNoContactDetailsCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    .line 784
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090185

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 783
    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setExpandButtonText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 787
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 790
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mImportantCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mImportantCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntryContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v3, v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 793
    const v3, 0x7f0e0192

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Landroid/widget/ImageView;

    .line 794
    const v3, 0x7f0e01f7

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAvatarView:Landroid/widget/ImageView;

    .line 795
    const v3, 0x7f0e01e0

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 796
    .local v2, "transparentView":Landroid/view/View;
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v3, :cond_1

    .line 797
    new-instance v3, Lcom/android/contacts/quickcontact/QuickContactActivity$9;

    invoke-direct {v3, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$9;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    :cond_1
    const v3, 0x7f0e00c8

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/contacts/common/util/ViewUtil;->addRectangularOutlineProvider(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 808
    const v3, 0x7f0e00cc

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    .line 809
    .local v1, "toolbar":Landroid/widget/Toolbar;
    invoke-virtual {v1}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 810
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getStatusBarHeight(Landroid/content/res/Resources;)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 811
    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 812
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 815
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f0400c0

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 817
    if-eqz p1, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    .line 818
    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    .line 819
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    sget v6, Lcom/android/contacts/quickcontact/QuickContactActivity;->SCRIM_COLOR:I

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

    .line 820
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 821
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mWindowScrim:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 823
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMultiShrinkScrollerListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    iget v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExtraMode:I

    if-ne v3, v9, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v7, v3}, Lcom/android/contacts/widget/MultiShrinkScroller;->initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;Z)V

    .line 826
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v3, v9}, Lcom/android/contacts/widget/MultiShrinkScroller;->setVisibility(I)V

    .line 828
    const v3, 0x7f090123

    invoke-direct {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(I)V

    .line 830
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setThemeColor()V

    .line 832
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 833
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mUniquePhoneNumberSet:Ljava/util/Set;

    .line 835
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 836
    new-instance v6, Lcom/android/contacts/quickcontact/QuickContactActivity$10;

    invoke-direct {v6, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$10;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 835
    invoke-static {v3, v4, v6}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 855
    if-eqz p1, :cond_2

    .line 856
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;

    .line 857
    new-instance v4, Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    invoke-direct {v4, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$11;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 856
    invoke-static {v3, v5, v4}, Lcom/android/contacts/util/SchedulingUtils;->doOnPreDraw(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 869
    const-string/jumbo v3, "call_plus_tutorial_finished"

    .line 868
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldChangeCallPlusTutorialText:Z

    .line 871
    const-string/jumbo v3, "call_plus_enabled_numbers"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    .line 870
    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusEnabledNumbers:Ljava/util/Set;

    .line 874
    :cond_2
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusServiceListener:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector$CallPlusConnectorListener;)V

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .line 876
    new-instance v3, Lcom/android/contacts/quickcontact/QuickContactActivity$12;

    invoke-direct {v3, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-static {p0, v3}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->getInstance(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    .line 884
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v3}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->connect()V

    .line 885
    invoke-static {p0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 886
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 750
    return-void

    :cond_3
    move v3, v5

    .line 817
    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 823
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2373
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2374
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f11000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2375
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2174
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 2176
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2179
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAvatarView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2180
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2182
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    if-eqz v0, :cond_2

    .line 2183
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    invoke-virtual {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->cancelImageLoadingIfNeeded()V

    .line 2185
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    if-eqz v0, :cond_3

    .line 2186
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->disconnect()V

    .line 2173
    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 916
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 917
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasAlreadyBeenOpened:Z

    .line 918
    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEntranceAnimationFinished:Z

    .line 919
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->processIntent(Landroid/content/Intent;)V

    .line 915
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 2439
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2487
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 2441
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->toggleStar(Landroid/view/MenuItem;)V

    .line 2442
    return v3

    .line 2444
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getEditContactIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->editContact(Landroid/content/Intent;)V

    .line 2445
    return v3

    .line 2449
    :sswitch_2
    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2450
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->copyContact()V

    .line 2451
    return v3

    .line 2453
    :sswitch_3
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mUniquePhoneNumberSet:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->refreshCapability(Ljava/util/ArrayList;)V

    .line 2454
    return v3

    .line 2456
    :sswitch_4
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-nez v1, :cond_0

    .line 2457
    return v6

    .line 2459
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->shareContact()V

    .line 2460
    return v3

    .line 2462
    :sswitch_5
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->createLauncherShortcutWithContact()V

    .line 2463
    return v3

    .line 2465
    :sswitch_6
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {p0, v1, v6}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 2466
    return v3

    .line 2468
    :sswitch_7
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-nez v1, :cond_1

    .line 2469
    return v6

    .line 2472
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 2471
    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->checkContactSizeAndShowErrorDialogIfNeeded(Landroid/app/Activity;Lcom/google/common/collect/ImmutableList;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2473
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.action.JOIN_AGGREGATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2474
    .local v0, "joinIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.contacts.action.AGGREGATE_ID"

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getContactId()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2476
    const-string/jumbo v1, "returnResult"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2477
    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 2479
    .end local v0    # "joinIntent":Landroid/content/Intent;
    :cond_2
    return v3

    .line 2481
    :sswitch_8
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-nez v1, :cond_3

    .line 2482
    return v6

    .line 2484
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->doPickRingtone()V

    .line 2485
    return v3

    .line 2439
    :sswitch_data_0
    .sparse-switch
        0x7f0e0252 -> :sswitch_8
        0x7f0e0264 -> :sswitch_0
        0x7f0e0265 -> :sswitch_1
        0x7f0e0266 -> :sswitch_2
        0x7f0e0267 -> :sswitch_3
        0x7f0e0268 -> :sswitch_4
        0x7f0e0269 -> :sswitch_6
        0x7f0e026a -> :sswitch_7
        0x7f0e026b -> :sswitch_5
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1102
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 1103
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->pause()V

    .line 1101
    return-void
.end method

.method public onPrefixInserted(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumberWithPrefix"    # Ljava/lang/String;

    .prologue
    .line 2609
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startDialActivity(Ljava/lang/String;)V

    .line 2608
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2380
    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-eqz v12, :cond_7

    .line 2382
    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v12}, Lcom/android/contacts/common/model/Contact;->isInVisibleGroup()Z

    move-result v5

    .line 2384
    .local v5, "isInVisibleGroup":Z
    const v12, 0x7f0e0264

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 2385
    .local v11, "starredMenuItem":Landroid/view/MenuItem;
    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-static {v11, v12}, Lcom/android/contacts/detail/ContactDisplayUtils;->configureStarredMenuItem(Landroid/view/MenuItem;Lcom/android/contacts/common/model/Contact;)V

    .line 2388
    const v12, 0x7f0e0265

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2389
    .local v2, "editMenuItem":Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuEditable:Z

    if-eqz v12, :cond_1

    .line 2390
    if-nez v5, :cond_0

    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v12}, Lcom/android/contacts/common/model/Contact;->isUserProfile()Z

    move-result v12

    .line 2389
    :goto_0
    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2392
    const v12, 0x7f0e0267

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 2393
    .local v8, "refreshMenu":Landroid/view/MenuItem;
    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 2394
    iget-object v13, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mUniquePhoneNumberSet:Ljava/util/Set;

    .line 2393
    invoke-interface {v12, v13}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->getContactDetailOptionMenuRefreshVisibility(Ljava/util/Set;)Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;

    move-result-object v3

    .line 2395
    .local v3, "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->-getcom_sonyericsson_android_socialphonebook_vilte_EntityVisibilitySwitchesValues()[I

    move-result-object v12

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 2405
    :pswitch_0
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2409
    :goto_1
    const v12, 0x7f0e026b

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 2410
    .local v10, "shortcutMenuItem":Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuCanCreateShortcut:Z

    if-eqz v12, :cond_2

    .line 2411
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isShortcutCreatable()Z

    move-result v12

    .line 2410
    if-eqz v12, :cond_2

    move v12, v5

    :goto_2
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2413
    const v12, 0x7f0e026a

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2414
    .local v6, "linkMenu":Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuLinkable:Z

    if-eqz v12, :cond_3

    move v12, v5

    :goto_3
    invoke-interface {v6, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2416
    const v12, 0x7f0e0269

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2417
    .local v1, "deleteMenu":Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuDeletable:Z

    if-eqz v12, :cond_4

    move v12, v5

    :goto_4
    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2418
    iget-boolean v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsContactReadOnly:Z

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    :goto_5
    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2420
    const v12, 0x7f0e0268

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 2421
    .local v9, "shareMenu":Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuShareable:Z

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2423
    const v12, 0x7f0e0252

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2424
    .local v7, "optionsRingtone":Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuCanSetRingtone:Z

    if-eqz v12, :cond_6

    .end local v5    # "isInVisibleGroup":Z
    :goto_6
    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2426
    const v12, 0x7f0e0266

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2427
    .local v0, "copyContactMenuItem":Landroid/view/MenuItem;
    iget-boolean v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOptionsMenuCopyable:Z

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2429
    const v12, 0x7f0e023b

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2430
    .local v4, "helpItem":Landroid/view/MenuItem;
    const v12, 0x7f090059

    invoke-static {p0, v4, v12}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    .line 2432
    const/4 v12, 0x1

    return v12

    .line 2390
    .end local v0    # "copyContactMenuItem":Landroid/view/MenuItem;
    .end local v1    # "deleteMenu":Landroid/view/MenuItem;
    .end local v3    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .end local v4    # "helpItem":Landroid/view/MenuItem;
    .end local v6    # "linkMenu":Landroid/view/MenuItem;
    .end local v7    # "optionsRingtone":Landroid/view/MenuItem;
    .end local v8    # "refreshMenu":Landroid/view/MenuItem;
    .end local v9    # "shareMenu":Landroid/view/MenuItem;
    .end local v10    # "shortcutMenuItem":Landroid/view/MenuItem;
    .restart local v5    # "isInVisibleGroup":Z
    :cond_0
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2389
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2397
    .restart local v3    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .restart local v8    # "refreshMenu":Landroid/view/MenuItem;
    :pswitch_1
    const/4 v12, 0x1

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2398
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 2401
    :pswitch_2
    const/4 v12, 0x1

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2402
    const/4 v12, 0x1

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 2410
    .restart local v10    # "shortcutMenuItem":Landroid/view/MenuItem;
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 2414
    .restart local v6    # "linkMenu":Landroid/view/MenuItem;
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 2417
    .restart local v1    # "deleteMenu":Landroid/view/MenuItem;
    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    .line 2418
    :cond_5
    const/4 v12, 0x1

    goto :goto_5

    .line 2424
    .restart local v7    # "optionsRingtone":Landroid/view/MenuItem;
    .restart local v9    # "shareMenu":Landroid/view/MenuItem;
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .line 2434
    .end local v1    # "deleteMenu":Landroid/view/MenuItem;
    .end local v2    # "editMenuItem":Landroid/view/MenuItem;
    .end local v3    # "entityVisibility":Lcom/sonyericsson/android/socialphonebook/vilte/EntityVisibility;
    .end local v5    # "isInVisibleGroup":Z
    .end local v6    # "linkMenu":Landroid/view/MenuItem;
    .end local v7    # "optionsRingtone":Landroid/view/MenuItem;
    .end local v8    # "refreshMenu":Landroid/view/MenuItem;
    .end local v9    # "shareMenu":Landroid/view/MenuItem;
    .end local v10    # "shortcutMenuItem":Landroid/view/MenuItem;
    .end local v11    # "starredMenuItem":Landroid/view/MenuItem;
    :cond_7
    const/4 v12, 0x0

    return v12

    .line 2395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1085
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 1088
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1090
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    if-eqz v0, :cond_0

    .line 1091
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIntentLaunched:Z

    .line 1092
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCachedCp2DataCardModel:Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->populateContactAndAboutCard(Lcom/android/contacts/quickcontact/QuickContactActivity$Cp2DataCardModel;)V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->isVilteSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateVideoCallIcon()V

    .line 1097
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 1084
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 891
    const-string/jumbo v1, "call_plus_tutorial_finished"

    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldChangeCallPlusTutorialText:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 892
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusEnabledNumbers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 893
    .local v0, "numbers":[Ljava/lang/String;
    const-string/jumbo v2, "call_plus_enabled_numbers"

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusEnabledNumbers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 894
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 890
    return-void
.end method

.method public onSelectBackupAccountCancelled()V
    .locals 0

    .prologue
    .line 2535
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 2139
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 2140
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;->bind(Landroid/app/Activity;)Z

    .line 2141
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->addListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V

    .line 2142
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mUniquePhoneNumberSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->registerForVideoCallEntityStatus(Ljava/util/Set;)V

    .line 2144
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->connect()V

    .line 2138
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2151
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    .line 2152
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->removeListener(Lcom/sonyericsson/android/socialphonebook/vilte/VilteChangeListener;)V

    .line 2154
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    if-eqz v0, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEntriesAndActionsTask:Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$EntriesAndActionsTask;->cancel(Z)Z

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusCapabilityChecker:Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;

    if-eqz v0, :cond_1

    .line 2162
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusCapabilityChecker:Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$CallPlusCapabilityChecker;->cancel(Z)Z

    .line 2164
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mMenuPlugin:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPlugin;->unbind()V

    .line 2165
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2167
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2168
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;->disconnect()V

    .line 2150
    :cond_2
    return-void
.end method

.method public onVideoCallEntityChange()V
    .locals 2

    .prologue
    .line 2523
    sget-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Called onVideoCallEntityChange()"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    if-eqz v0, :cond_0

    .line 2525
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindContactData(Lcom/android/contacts/common/model/Contact;)V

    .line 2522
    :cond_0
    return-void
.end method

.method public showCallPlusTutorial()V
    .locals 4

    .prologue
    .line 2642
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusTutorialCardName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2643
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusTutorialCardName:Ljava/lang/String;

    .line 2645
    :cond_0
    const v3, 0x7f0e01e4

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 2648
    .local v1, "callPlusTutorialStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_2

    .line 2649
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 2651
    .local v0, "callPlusTutorialCardView":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity$18;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/view/View;)V

    .line 2671
    .local v2, "onClickListener":Landroid/view/View$OnClickListener;
    const v3, 0x7f0e007f

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2672
    const v3, 0x7f0e0080

    invoke-virtual {p0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2673
    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldChangeCallPlusTutorialText:Z

    if-eqz v3, :cond_1

    .line 2674
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->changeCallPlusTutorialDescription()V

    .line 2641
    .end local v0    # "callPlusTutorialCardView":Landroid/view/View;
    .end local v2    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_1
    :goto_0
    return-void

    .line 2676
    :cond_2
    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShouldChangeCallPlusTutorialText:Z

    if-eqz v3, :cond_1

    .line 2677
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->changeCallPlusTutorialDescription()V

    goto :goto_0
.end method

.method triggerMockCallPlusServiceConnection(Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;)V
    .locals 0
    .param p1, "mockConnector"    # Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 2697
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCallPlusConnector:Lcom/sonyericsson/android/socialphonebook/util/CallPlusConnector;

    .line 2698
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateCallComposerAccordingToCapabilities()V

    .line 2696
    return-void
.end method
