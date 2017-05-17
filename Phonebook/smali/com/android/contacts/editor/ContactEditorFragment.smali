.class public Lcom/android/contacts/editor/ContactEditorFragment;
.super Landroid/app/Fragment;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
.implements Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
.implements Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView$Listener;
.implements Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$Listener;
.implements Lcom/android/contacts/editor/AddAnotherFieldDialog$OnFieldSelectedListener;
.implements Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog$OnDialogDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$SaveMode;,
        Lcom/android/contacts/editor/ContactEditorFragment$Status;,
        Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;,
        Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;,
        Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$Listener;,
        Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;,
        Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;,
        Lcom/android/contacts/editor/ContactEditorFragment$1;,
        Lcom/android/contacts/editor/ContactEditorFragment$2;,
        Lcom/android/contacts/editor/ContactEditorFragment$3;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues:[I = null

.field public static final INTENT_EXTRA_ADD_MIME_TYPE:Ljava/lang/String; = "addMimeType"

.field public static final INTENT_EXTRA_ADD_TO_DEFAULT_DIRECTORY:Ljava/lang/String; = "addToDefaultDirectory"

.field public static final INTENT_EXTRA_NEW_LOCAL_PROFILE:Ljava/lang/String; = "newLocalProfile"

.field public static final INTENT_KEY_ADD_TO_ICE_CONTACTS:Ljava/lang/String; = "addContactToIceContacts"

.field public static final INTENT_KEY_EDIT_ICE_CONTACTS:Ljava/lang/String; = "editIceContact"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_ADD_CONTACT_TO_ICE:Ljava/lang/String; = "addContactToICE"

.field private static final KEY_CONTACT_ID_FOR_JOIN:Ljava/lang/String; = "contactidforjoin"

.field private static final KEY_CONTACT_WRITABLE_FOR_JOIN:Ljava/lang/String; = "contactwritableforjoin"

.field private static final KEY_CURRENT_PHOTO_FILE:Ljava/lang/String; = "currentphotofile"

.field private static final KEY_CUSTOM_RINGTONE:Ljava/lang/String; = "customRingtone"

.field private static final KEY_CUSTOM_RINGTONE_STATE_CHANGED:Ljava/lang/String; = "customRingtoneStateChanged"

.field private static final KEY_DEFAULT_PHOTO_ID:Ljava/lang/String; = "contactDefaultPhotoId"

.field private static final KEY_DISPLAY_NAME_RAW_CONTACT_ID:Ljava/lang/String; = "displayNameRawContactId"

.field private static final KEY_EDIT_ICE_CONTACT:Ljava/lang/String; = "editIceContact"

.field private static final KEY_EDIT_STATE:Ljava/lang/String; = "state"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_IS_CHAMELEON_PRELOADED_CONTACT:Ljava/lang/String; = "isChameleonPreloadedContact"

.field public static final KEY_IS_CONTACT_REMOVED_FROM_SPEED_DIAL:Ljava/lang/String; = "isContactRemovedFromSpeedDial"

.field private static final KEY_NEW_LOCAL_PROFILE:Ljava/lang/String; = "newLocalProfile"

.field private static final KEY_RAW_CONTACT_ID_REQUESTING_PHOTO:Ljava/lang/String; = "photorequester"

.field private static final KEY_SELECTED_PHOTO_ID:Ljava/lang/String; = "selectedPhotoId"

.field private static final KEY_SELECTED_TAB:Ljava/lang/String; = "selectedTab"

.field private static final KEY_SEND_TO_VOICEMAIL_STATE:Ljava/lang/String; = "sendToVoicemailState"

.field private static final KEY_SEND_TO_VOICEMAIL_STATE_CHANGED:Ljava/lang/String; = "sendToVoicemailStateChanged"

.field private static final KEY_SHOW_JOIN_SUGGESTIONS:Ljava/lang/String; = "showJoinSuggestions"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_UPDATED_PHOTOS:Ljava/lang/String; = "updatedPhotos"

.field private static final KEY_URI:Ljava/lang/String; = "uri"

.field private static final KEY_VIEW_ID_GENERATOR:Ljava/lang/String; = "viewidgenerator"

.field private static final LOADER_DATA:I = 0x1

.field private static final LOADER_GROUPS:I = 0x2

.field private static final REQUEST_CODE_JOIN:I = 0x0

.field public static final REQUEST_CODE_RINGTONE_PICKED:I = 0x3

.field private static final REQUEST_CODE_STORAGE_PERMISSION:I = 0x1

.field public static final SAVE_MODE_EXTRA_KEY:Ljava/lang/String; = "saveMode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountSwitcherPopup:Landroid/widget/PopupWindow;

.field private mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mAction:Ljava/lang/String;

.field private mAddContactToICE:Z

.field private mAddMimeType:Ljava/lang/String;

.field private mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

.field private mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

.field private mAggregationSuggestionView:Landroid/view/View;

.field private mAggregationSuggestionsRawContactId:J

.field private mAutoAddToDefaultGroup:Z

.field private mChooseAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

.field private final mComparator:Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;

.field private mContactIdForJoin:J

.field private mContactWritableForJoin:Z

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

.field private mCurrentPhotoUri:Landroid/net/Uri;

.field private mCurrentlySelectedTab:Ljava/lang/String;

.field private mCustomRingtone:Ljava/lang/String;

.field private mCustomRingtoneStateChanged:Z

.field private final mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/common/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayNameRawContactId:J

.field private mEditIceContact:Z

.field private mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

.field private mEnabled:Z

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mIsAdnAccountType:Z

.field private mIsChameleonPreloadContact:Z

.field private mIsLinkedContact:Z

.field private mIsNeedToPhotoHandlerCallOnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsUserProfile:Z

.field private mLinkedContactDefaultPhotoId:J

.field private mLinkedContactUserSelectedPhotoId:J

.field private mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mLoaderStartTime:J

.field private mLookupUri:Landroid/net/Uri;

.field private mNewLocalProfile:Z

.field private mPbrIndex:I

.field private mPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

.field private mRawContactIdRequestingPhoto:J

.field private mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

.field private mRequestFocus:Z

.field private mSendToVoicemailState:Z

.field private mSendToVoicemailStateChanged:Z

.field private mState:Lcom/android/contacts/common/model/RawContactDeltaList;

.field private mStatus:I

.field private mUpdatedPhotos:Landroid/os/Bundle;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLinkedContactUserSelectedPhotoId:J

    return-wide v0
.end method

.method static synthetic -get11(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide v0
.end method

.method static synthetic -get13(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/common/model/AccountTypeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddContactToICE:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLinkedContactDefaultPhotoId:J

    return-wide v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->-com_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->-com_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->values()[Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_DISKFULL:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_LINKERROR:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_TOOMANYLINK:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_UNKNOWN:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->SUCCESS:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->-com_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherPopup:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    return-wide p1
.end method

.method static synthetic -set11(Lcom/android/contacts/editor/ContactEditorFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentlySelectedTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDisplayNameRawContactId:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLinkedContactDefaultPhotoId:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLinkedContactUserSelectedPhotoId:J

    return-wide p1
.end method

.method static synthetic -set8(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide p1
.end method

.method static synthetic -set9(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/contacts/editor/ContactEditorFragment;J)Z
    .locals 1
    .param p1, "rawContactId"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->doUnlinkRawContact(J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 1
    .param p1, "rawContactId"    # J
    .param p3, "photo"    # Landroid/graphics/Bitmap;
    .param p4, "photoUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/RawContactCommonEditorView;J)V
    .locals 0
    .param p1, "editor"    # Lcom/android/contacts/editor/RawContactCommonEditorView;
    .param p2, "rawContactId"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->showAddAnotherFieldDialog(Lcom/android/contacts/editor/RawContactCommonEditorView;J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rawContactEditor"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->dismissAccountSwitcherPopupWindow()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "popupWindow"    # Landroid/widget/ListPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->dismissPopupWindow(Landroid/widget/ListPopupWindow;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p1, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "oldAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p3, "newAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const-class v0, Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 293
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;

    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    .line 350
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNeedToPhotoHandlerCallOnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 396
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 395
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 414
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 415
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 417
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsAdnAccountType:Z

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPbrIndex:I

    .line 2624
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$2;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 2623
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 2662
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$3;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 2661
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 429
    return-void
.end method

.method private acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rawContactEditor"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    const/4 v6, 0x0

    .line 2240
    invoke-virtual {p2}, Lcom/android/contacts/editor/RawContactEditorView;->getRawContactId()J

    move-result-wide v2

    .line 2241
    .local v2, "rawContactId":J
    iget-wide v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 2242
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2243
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2244
    iput-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    .line 2245
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    .line 2248
    :cond_0
    iput-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 2250
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-nez v1, :cond_1

    .line 2251
    new-instance v1, Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-direct {v1, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    .line 2252
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v1, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V

    .line 2253
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->start()V

    .line 2256
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContactId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setContactId(J)V

    .line 2258
    invoke-virtual {p2}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v0

    .line 2259
    .local v0, "nameEditor":Lcom/android/contacts/editor/LabeledEditorView;
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->onNameChange(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 2239
    return-void
.end method

.method private addAccountSwitcher(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 6
    .param p1, "currentState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;

    .prologue
    .line 1471
    new-instance v3, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 1472
    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 1473
    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 1474
    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v5

    .line 1471
    invoke-direct {v3, v0, v1, v5}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    .local v3, "currentAccount":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const v0, 0x7f0e013c

    invoke-virtual {p2, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1478
    .local v4, "anchorView":Landroid/view/View;
    const v0, 0x7f0e0140

    invoke-virtual {p2, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1479
    .local v2, "iv":Landroid/widget/ImageView;
    const v0, 0x7f02009e

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1481
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$10;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment$10;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ImageView;Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/view/View;Lcom/android/contacts/common/model/RawContactDelta;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1470
    return-void
.end method

.method private bindEditors()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 875
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-nez v6, :cond_0

    .line 876
    return-void

    .line 880
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$RawContactDeltaComparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 883
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 885
    iput-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 886
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isLinkedContact()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsLinkedContact:Z

    .line 887
    iget-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsLinkedContact:Z

    if-eqz v6, :cond_7

    .line 889
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400ad

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 888
    check-cast v2, Lcom/android/contacts/editor/LinkedContactEditorView;

    .line 891
    .local v2, "linkedContactEditorView":Lcom/android/contacts/editor/LinkedContactEditorView;
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "rawContactDelta$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContactDelta;

    .line 892
    .local v3, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContactDelta;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 893
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContactEditorView(Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    .line 894
    .local v0, "editorView":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v2, v0}, Lcom/android/contacts/editor/LinkedContactEditorView;->addContactEditorView(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto :goto_0

    .line 897
    .end local v0    # "editorView":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v3    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    iget-wide v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDisplayNameRawContactId:J

    invoke-virtual {v2, v6, v8, v9}, Lcom/android/contacts/editor/LinkedContactEditorView;->bindDisplayNameSelector(Ljava/util/List;J)V

    .line 900
    new-instance v6, Lcom/android/contacts/editor/ContactEditorFragment$5;

    invoke-direct {v6, p0}, Lcom/android/contacts/editor/ContactEditorFragment$5;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 899
    invoke-virtual {v2, v6}, Lcom/android/contacts/editor/LinkedContactEditorView;->setDisplayNameSelectorListener(Lcom/android/contacts/editor/LinkedContactEditorView$DisplayNameSelectionListener;)V

    .line 908
    const v6, 0x7f0e01c4

    .line 907
    invoke-virtual {v2, v6}, Lcom/android/contacts/editor/LinkedContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 909
    .local v5, "unlinkContactButton":Landroid/widget/Button;
    iget-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v6, :cond_6

    .line 910
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 925
    :goto_1
    new-instance v6, Lcom/android/contacts/editor/ContactEditorFragment$7;

    invoke-direct {v6, p0}, Lcom/android/contacts/editor/ContactEditorFragment$7;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    invoke-virtual {v2, v6}, Lcom/android/contacts/editor/LinkedContactEditorView;->setOnTabChangeListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 932
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentlySelectedTab:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 933
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentlySelectedTab:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/android/contacts/editor/LinkedContactEditorView;->setCurrentTab(Ljava/lang/String;)V

    .line 936
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->resolveLinkedContactPhotos(Lcom/android/contacts/editor/LinkedContactEditorView;)V

    .line 937
    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 944
    .end local v2    # "linkedContactEditorView":Lcom/android/contacts/editor/LinkedContactEditorView;
    .end local v4    # "rawContactDelta$iterator":Ljava/util/Iterator;
    .end local v5    # "unlinkContactButton":Landroid/widget/Button;
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 946
    iput-boolean v10, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 948
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    .line 951
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 955
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 956
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    if-eqz v1, :cond_5

    .line 957
    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    .line 872
    :cond_5
    return-void

    .line 912
    .end local v1    # "fragmentManager":Landroid/app/FragmentManager;
    .restart local v2    # "linkedContactEditorView":Lcom/android/contacts/editor/LinkedContactEditorView;
    .restart local v4    # "rawContactDelta$iterator":Ljava/util/Iterator;
    .restart local v5    # "unlinkContactButton":Landroid/widget/Button;
    :cond_6
    new-instance v6, Lcom/android/contacts/editor/ContactEditorFragment$6;

    invoke-direct {v6, p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$6;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/LinkedContactEditorView;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 939
    .end local v2    # "linkedContactEditorView":Lcom/android/contacts/editor/LinkedContactEditorView;
    .end local v4    # "rawContactDelta$iterator":Ljava/util/Iterator;
    .end local v5    # "unlinkContactButton":Landroid/widget/Button;
    :cond_7
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFirstVisibleContact()Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v3

    .line 940
    .restart local v3    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    if-eqz v3, :cond_4

    .line 941
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContactEditorView(Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    goto :goto_2
.end method

.method private bindEditorsForExistingContact(Lcom/android/contacts/common/model/Contact;)V
    .locals 11
    .param p1, "contact"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    const/4 v10, 0x1

    .line 711
    invoke-virtual {p0, v10}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 713
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->setState(Lcom/android/contacts/common/model/RawContactDeltaList;)V

    .line 714
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    .line 715
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 718
    const/4 v4, 0x0

    .line 720
    .local v4, "localProfileExists":Z
    iget-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v8, :cond_2

    .line 721
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "state$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/RawContactDelta;

    .line 723
    .local v6, "state":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/RawContactDelta;->setProfileQueryUri()V

    .line 725
    invoke-virtual {v6}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    const-string/jumbo v9, "account_name"

    invoke-virtual {v8, v9}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "accountName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    const-string/jumbo v9, "account_type"

    invoke-virtual {v8, v9}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, "accountType":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    const-string/jumbo v9, "data_set"

    invoke-virtual {v8, v9}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "accountDataSet":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->isLocalProfileAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 730
    const/4 v4, 0x1

    goto :goto_0

    .line 734
    .end local v0    # "accountDataSet":Ljava/lang/String;
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v6    # "state":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    if-nez v4, :cond_2

    .line 735
    new-instance v5, Lcom/android/contacts/common/model/RawContact;

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/Context;)V

    .line 736
    .local v5, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContact;->setAccountToLocalProfile()V

    .line 738
    new-instance v3, Lcom/android/contacts/common/model/RawContactDelta;

    .line 739
    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v8

    .line 738
    invoke-static {v8}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/android/contacts/common/model/RawContactDelta;-><init>(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 740
    .local v3, "insert":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContactDelta;->setProfileQueryUri()V

    .line 741
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v8, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    .line 744
    .end local v3    # "insert":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v5    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v7    # "state$iterator":Ljava/util/Iterator;
    :cond_2
    iput-boolean v10, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 746
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 710
    return-void
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    const/4 v0, 0x0

    .line 819
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V

    .line 818
    return-void
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 5
    .param p1, "newAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "newAccountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p4, "oldAccountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    const/4 v4, 0x1

    .line 825
    iput v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 827
    new-instance v1, Lcom/android/contacts/common/model/RawContact;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/contacts/common/model/RawContact;-><init>(Landroid/content/Context;)V

    .line 828
    .local v1, "rawContact":Lcom/android/contacts/common/model/RawContact;
    if-eqz p1, :cond_1

    .line 829
    invoke-virtual {v1, p1}, Lcom/android/contacts/common/model/RawContact;->setAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 834
    :goto_0
    new-instance v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/common/model/RawContactDelta;-><init>(Lcom/android/contacts/common/model/ValuesDelta;)V

    .line 835
    .local v0, "insert":Lcom/android/contacts/common/model/RawContactDelta;
    if-nez p3, :cond_2

    .line 837
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v2, p2, v0, v3}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 848
    :goto_1
    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 849
    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 851
    const-string/jumbo v2, "vnd.android.cursor.item/postal-address_v2"

    .line 850
    invoke-static {v0, p2, v2}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 854
    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz v2, :cond_0

    .line 855
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->setProfileQueryUri()V

    .line 858
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-nez v2, :cond_3

    .line 860
    invoke-static {v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->fromSingle(Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setState(Lcom/android/contacts/common/model/RawContactDeltaList;)V

    .line 866
    :goto_2
    iput-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 868
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 824
    return-void

    .line 831
    .end local v0    # "insert":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->setAccountToLocalContact()V

    goto :goto_0

    .line 839
    .restart local v0    # "insert":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, v0, p4, p2}, Lcom/android/contacts/common/model/RawContactModifier;->migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)V

    goto :goto_1

    .line 863
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v2, v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private bindGroupMetaData()V
    .locals 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-nez v0, :cond_1

    .line 1431
    :cond_0
    return-void

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 1429
    return-void
.end method

.method private bindPhotoHandler(Lcom/android/contacts/editor/BaseRawContactEditorView;Lcom/android/contacts/common/model/account/AccountType;Z)V
    .locals 8
    .param p1, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "isChameleonContact"    # Z

    .prologue
    .line 1396
    invoke-virtual {p2}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_2

    .line 1407
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1408
    const/4 v4, 0x1

    .line 1416
    .local v4, "mode":I
    :goto_0
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    .line 1417
    sget-object v6, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->NormalContact:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    move-object v1, p0

    move-object v3, p1

    .line 1416
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/app/Activity;Lcom/android/contacts/editor/BaseRawContactEditorView;ILcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;)V

    .line 1419
    .local v0, "photoHandler":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    .line 1420
    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->getListener()Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    .line 1419
    invoke-virtual {v2, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 1421
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 1424
    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 1425
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 1394
    :cond_1
    return-void

    .line 1397
    .end local v0    # "photoHandler":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .end local v4    # "mode":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1398
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1399
    const/16 v4, 0xf

    .restart local v4    # "mode":I
    goto :goto_0

    .line 1401
    .end local v4    # "mode":I
    :cond_3
    const/16 v4, 0xe

    .restart local v4    # "mode":I
    goto :goto_0

    .line 1404
    .end local v4    # "mode":I
    :cond_4
    const/4 v4, 0x4

    .restart local v4    # "mode":I
    goto :goto_0

    .line 1411
    .end local v4    # "mode":I
    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 1412
    return-void
.end method

.method private bindPhotoHandlerForLinkedContact(Lcom/android/contacts/editor/LinkedContactEditorView;Ljava/util/ArrayList;Z)V
    .locals 8
    .param p1, "editor"    # Lcom/android/contacts/editor/LinkedContactEditorView;
    .param p3, "isDefaultPhotoFromWritableAccount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/editor/LinkedContactEditorView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1369
    .local p2, "contactPhotoEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/16 v4, 0xc

    .line 1370
    .local v4, "modes":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1371
    :cond_0
    const/4 v4, 0x4

    .line 1378
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    .line 1379
    sget-object v6, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->LinkedContact:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    move-object v1, p0

    move-object v3, p1

    .line 1378
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/app/Activity;Lcom/android/contacts/editor/BaseRawContactEditorView;ILcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;)V

    .line 1381
    .local v0, "photoHandler":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-virtual {v0, p2}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->setContactPictures(Ljava/util/ArrayList;)V

    .line 1382
    invoke-virtual {p1}, Lcom/android/contacts/editor/LinkedContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    .line 1383
    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->getListener()Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    .line 1382
    invoke-virtual {v2, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 1384
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 1388
    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1}, Lcom/android/contacts/editor/LinkedContactEditorView;->getRawContactId()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 1389
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 1367
    :cond_2
    return-void

    .line 1372
    .end local v0    # "photoHandler":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritableAndPhotoCapable(Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1373
    const/4 v4, 0x5

    goto :goto_0

    .line 1374
    :cond_4
    if-eqz p3, :cond_1

    .line 1375
    const/16 v4, 0xe

    goto :goto_0
.end method

.method private createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 777
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 778
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 780
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 781
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v2, :cond_0

    .line 782
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v2, p1, v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountType;)V

    goto :goto_0
.end method

.method private createContactEditorView(Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 24
    .param p1, "rawContactDelta"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v19

    .line 1185
    .local v19, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v15

    .line 1186
    .local v15, "rawContactIdResult":Ljava/lang/Long;
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1187
    .local v16, "rawContactId":J
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->isChameleonPreloadedContact()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mIsChameleonPreloadContact:Z

    .line 1189
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mIsAdnAccountType:Z

    .line 1190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsAdnAccountType:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1196
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v20

    const-string/jumbo v21, "sourceid"

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1198
    .local v18, "sourceId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getInstance(Landroid/content/Context;ZLjava/lang/String;)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-result-object v9

    .line 1200
    .local v9, "helper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    .line 1201
    const v21, 0x7f040005

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 1200
    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;

    .line 1206
    .local v6, "adnEditor":Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsLinkedContact:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-virtual {v6}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->hideAccountContainer()V

    .line 1207
    :cond_0
    move-object v8, v6

    .line 1210
    .local v8, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getPbrNumber(J)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mPbrIndex:I

    .line 1211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mPbrIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isValidPbrIndex(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mPbrIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;->setPbrIndex(I)V

    .line 1235
    .end local v6    # "adnEditor":Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;
    .end local v9    # "helper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .end local v18    # "sourceId":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsLinkedContact:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 1236
    const-string/jumbo v20, "com.sonyericsson.android.socialphonebook.action.NEW_CONTACT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 1238
    .local v4, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 1241
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    .line 1248
    .end local v4    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddMimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddMimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 1252
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V

    .line 1255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsLinkedContact:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    invoke-virtual {v8}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 1257
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsChameleonPreloadContact:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v8, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->bindPhotoHandler(Lcom/android/contacts/editor/BaseRawContactEditorView;Lcom/android/contacts/common/model/account/AccountType;Z)V

    .line 1261
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->updatedBitmapForRawContact(J)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1262
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    invoke-virtual {v8, v7}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 1265
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    instance-of v0, v8, Lcom/android/contacts/editor/RawContactCommonEditorView;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object v13, v8

    .line 1267
    check-cast v13, Lcom/android/contacts/editor/RawContactCommonEditorView;

    .line 1268
    .local v13, "rawContactCommonEditor":Lcom/android/contacts/editor/RawContactCommonEditorView;
    const v20, 0x7f0e01fc

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1269
    .local v5, "addFieldButton":Landroid/widget/Button;
    new-instance v20, Lcom/android/contacts/editor/ContactEditorFragment$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment$8;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/RawContactCommonEditorView;J)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1278
    instance-of v0, v13, Lcom/android/contacts/editor/RawContactEditorView;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object v14, v13

    .line 1280
    check-cast v14, Lcom/android/contacts/editor/RawContactEditorView;

    .line 1281
    .local v14, "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    new-instance v11, Lcom/android/contacts/editor/ContactEditorFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14}, Lcom/android/contacts/editor/ContactEditorFragment$9;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 1299
    .local v11, "listener":Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-virtual {v14}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v12

    .line 1300
    .local v12, "nameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1301
    invoke-virtual {v12}, Lcom/android/contacts/editor/TextFieldsEditorView;->requestFocus()Z

    .line 1302
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 1304
    :cond_5
    invoke-virtual {v12, v11}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 1306
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/contacts/editor/RawContactEditorView;->setAutoAddToDefaultGroup(Z)V

    .line 1308
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    move-wide/from16 v20, v0

    cmp-long v20, v16, v20

    if-nez v20, :cond_6

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 1313
    .end local v5    # "addFieldButton":Landroid/widget/Button;
    .end local v11    # "listener":Lcom/android/contacts/editor/Editor$EditorListener;
    .end local v12    # "nameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v13    # "rawContactCommonEditor":Lcom/android/contacts/editor/RawContactCommonEditorView;
    .end local v14    # "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    :cond_6
    return-object v8

    .line 1186
    .end local v8    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v16    # "rawContactId":J
    :cond_7
    const-wide/16 v16, -0x1

    .restart local v16    # "rawContactId":J
    goto/16 :goto_0

    .line 1218
    .restart local v6    # "adnEditor":Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;
    .restart local v8    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .restart local v9    # "helper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .restart local v18    # "sourceId":I
    :cond_8
    sget-object v20, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mPbrIndex is not valid for a contact (while inflating AdnContactEditorView). mAction= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1218
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1219
    const-string/jumbo v22, ", sourceId="

    .line 1218
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onError()V

    .line 1221
    return-object v8

    .line 1224
    .end local v6    # "adnEditor":Lcom/sonyericsson/android/socialphonebook/ui/widget/AdnContactEditorView;
    .end local v8    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v9    # "helper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .end local v18    # "sourceId":I
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsChameleonPreloadContact:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1225
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsLinkedContact:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    const v10, 0x7f0400c5

    .line 1227
    .local v10, "layout":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .restart local v8    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    move-object/from16 v20, v8

    .line 1228
    check-cast v20, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView;->setListener(Lcom/android/contacts/editor/RawContactReadOnlyCommonEditorView$Listener;)V

    goto/16 :goto_1

    .line 1226
    .end local v8    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v10    # "layout":I
    :cond_b
    const v10, 0x7f0400c6

    .restart local v10    # "layout":I
    goto :goto_3

    .line 1230
    .end local v10    # "layout":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsLinkedContact:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    const v10, 0x7f0400c2

    .line 1232
    .restart local v10    # "layout":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .restart local v8    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    goto/16 :goto_1

    .line 1231
    .end local v8    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v10    # "layout":I
    :cond_d
    const v10, 0x7f0400c3

    .restart local v10    # "layout":I
    goto :goto_4

    .line 1239
    .end local v10    # "layout":I
    .restart local v4    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v8    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/common/model/RawContactDelta;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_2

    .line 1244
    .end local v4    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_2
.end method

.method private disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 2
    .param p1, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;

    .prologue
    .line 1555
    const v1, 0x7f0e013c

    invoke-virtual {p1, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1556
    .local v0, "accountView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1552
    return-void
.end method

.method private dismissAccountSwitcherPopupWindow()V
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountSwitcherPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1546
    :cond_0
    return-void
.end method

.method private dismissPopupWindow(Landroid/widget/ListPopupWindow;)V
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 2417
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2418
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2416
    :cond_0
    return-void
.end method

.method private doJoinContactAction()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1681
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1682
    return v1

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1693
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v0

    return v0

    .line 1688
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f090163

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1690
    return v2
.end method

.method private doPickRingtone()V
    .locals 3

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 1700
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->createSetCustomRingtoneIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1703
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1699
    return-void
.end method

.method private doRevertAction()V
    .locals 2

    .prologue
    .line 1837
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1838
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1839
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1840
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1841
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->pause()V

    .line 1842
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted(Landroid/content/Intent;)V

    .line 1843
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hideSoftKeyboard()V

    .line 1835
    return-void
.end method

.method private doUnlinkRawContact(J)Z
    .locals 7
    .param p1, "rawContactId"    # J

    .prologue
    const/4 v5, 0x0

    .line 1654
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v2

    if-nez v2, :cond_0

    return v5

    .line 1657
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/RawContactDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v3

    .line 1656
    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->newInstance(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;)Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    move-result-object v1

    .line 1659
    .local v1, "wrapper":Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->newInstance(Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;

    move-result-object v0

    .line 1660
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;
    invoke-virtual {v0, p0, v5}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1661
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1662
    const/4 v2, 0x1

    return v2
.end method

.method private findEditorByRawContactId(J)Lcom/android/contacts/editor/RawContactCommonEditorView;
    .locals 3
    .param p1, "rawContactId"    # J

    .prologue
    const/4 v2, 0x0

    .line 2576
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v1, :cond_1

    .line 2577
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    instance-of v1, v1, Lcom/android/contacts/editor/LinkedContactEditorView;

    if-eqz v1, :cond_0

    .line 2578
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    check-cast v0, Lcom/android/contacts/editor/LinkedContactEditorView;

    .line 2579
    .local v0, "view":Lcom/android/contacts/editor/LinkedContactEditorView;
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/editor/LinkedContactEditorView;->findEditorByRawContactId(J)Lcom/android/contacts/editor/RawContactCommonEditorView;

    move-result-object v1

    return-object v1

    .line 2581
    .end local v0    # "view":Lcom/android/contacts/editor/LinkedContactEditorView;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    check-cast v1, Lcom/android/contacts/editor/RawContactCommonEditorView;

    return-object v1

    .line 2585
    :cond_1
    return-object v2
.end method

.method private getFirstVisibleContact()Lcom/android/contacts/common/model/RawContactDelta;
    .locals 3

    .prologue
    .line 1131
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rawContactDelta$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    .line 1132
    .local v0, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1133
    return-object v0

    .line 1135
    .end local v0    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getPhoneNumbers()Ljava/util/ArrayList;
    .locals 7
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
    .line 1153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .local v0, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rawContactDelta$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    .line 1155
    .local v1, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v6}, Lcom/android/contacts/common/model/RawContactDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1159
    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    .line 1158
    invoke-virtual {v1, v6}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1160
    .local v5, "valuesDeltaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "values$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1161
    .local v3, "values":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v6, "data1"

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1162
    const-string/jumbo v6, "data1"

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1166
    .end local v1    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v3    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v4    # "values$iterator":Ljava/util/Iterator;
    .end local v5    # "valuesDeltaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    return-object v0
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 2
    .param p1, "pickedUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 2493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtoneStateChanged:Z

    .line 2495
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2496
    :cond_0
    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 2492
    :goto_0
    return-void

    .line 2498
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method

.method private hasMoreThanOnePhoto()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2593
    const/4 v0, 0x0

    .line 2594
    .local v0, "countWithPicture":I
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v7}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v4

    .line 2595
    .local v4, "numEntities":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 2596
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v7, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    .line 2597
    .local v1, "entity":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContactDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2598
    const-string/jumbo v7, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v6

    .line 2599
    .local v6, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoto()[B

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2600
    add-int/lit8 v0, v0, 0x1

    .line 2612
    :cond_0
    :goto_1
    if-le v0, v11, :cond_2

    .line 2613
    return v11

    .line 2602
    :cond_1
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2603
    .local v8, "rawContactId":J
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2604
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 2605
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2606
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2607
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2595
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "primary":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v8    # "rawContactId":J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2617
    .end local v1    # "entity":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_3
    const/4 v7, 0x0

    return v7
.end method

.method private hasPendingChanges()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1719
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 1723
    .local v0, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-static {v2, v0}, Lcom/android/contacts/common/model/RawContactModifier;->hasChanges(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1724
    const-string/jumbo v2, "android.intent.action.EDIT"

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1725
    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtoneStateChanged:Z

    if-nez v2, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailStateChanged:Z

    .line 1723
    :cond_0
    :goto_0
    return v1

    .line 1724
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasPhoneNumber()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1139
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rawContactDelta$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    .line 1140
    .local v0, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/RawContactDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1144
    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    .line 1143
    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1145
    .local v4, "valuesDeltaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "values$iterator":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1146
    .local v2, "values":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v6, "data1"

    invoke-virtual {v2, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 1149
    .end local v0    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v2    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "values$iterator":Ljava/util/Iterator;
    .end local v4    # "valuesDeltaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    return v5
.end method

.method private hasValidState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1711
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hideSoftKeyboard()V
    .locals 4

    .prologue
    .line 1849
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1848
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1850
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1851
    .local v0, "focusView":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1852
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1846
    :cond_0
    return-void
.end method

.method private isAdnSimDisabled()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1857
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-nez v4, :cond_0

    .line 1858
    return v6

    .line 1861
    :cond_0
    const/4 v0, 0x3

    .line 1862
    .local v0, "checkType":I
    const-string/jumbo v4, "android.intent.action.EDIT"

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1863
    const/4 v0, 0x2

    .line 1865
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    .line 1866
    .local v1, "item":Lcom/android/contacts/common/model/RawContactDelta;
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    iget-object v3, v4, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 1867
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1868
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->showToastIfSimAbsent(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    .line 1867
    if-eqz v4, :cond_2

    .line 1869
    const/4 v4, 0x1

    return v4

    .line 1872
    .end local v1    # "item":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v3    # "type":Ljava/lang/String;
    :cond_3
    return v6
.end method

.method private isContactCanSetRingtone()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1612
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1613
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    .line 1612
    if-eqz v1, :cond_0

    .line 1614
    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsAdnAccountType:Z

    if-eqz v1, :cond_1

    .line 1612
    :cond_0
    :goto_0
    return v0

    .line 1614
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isContactCanSetSendToVoicemail()Z
    .locals 1

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getDisabledVoicemail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1621
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1620
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1621
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private isContactWritableAndPhotoCapable(Z)Z
    .locals 6
    .param p1, "doCheckPhotoCapable"    # Z

    .prologue
    .line 2067
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 2068
    .local v0, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v3

    .line 2069
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2070
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v5, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    .line 2071
    .local v1, "entity":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    .line 2072
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2073
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isAccountPhotoCapable(Lcom/android/contacts/common/model/account/AccountType;)Z

    move-result v5

    .line 2072
    if-eqz v5, :cond_1

    .line 2074
    :cond_0
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContactDelta;->isChameleonPreloadedContact()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2069
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2075
    :cond_2
    const/4 v5, 0x1

    return v5

    .line 2078
    .end local v1    # "entity":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_3
    const/4 v5, 0x0

    return v5
.end method

.method private isEditingUserProfile()Z
    .locals 1

    .prologue
    .line 2082
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isLinkedContact()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1170
    const/4 v0, 0x0

    .line 1171
    .local v0, "contactCounter":I
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rawContactDelta$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    .line 1172
    .local v1, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContactDelta;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1173
    add-int/lit8 v0, v0, 0x1

    .line 1174
    if-le v0, v4, :cond_0

    .line 1175
    return v4

    .line 1178
    .end local v1    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private joinAggregate(J)V
    .locals 9
    .param p1, "contactId"    # J

    .prologue
    .line 2053
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 2054
    iget-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    .line 2055
    const-class v7, Lcom/android/contacts/activities/ContactEditorActivity;

    const-string/jumbo v8, "joinCompleted"

    move-wide v4, p1

    .line 2053
    invoke-static/range {v1 .. v8}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2056
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2052
    return-void
.end method

.method private rebindEditorsForNewContact(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 6
    .param p1, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "oldAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p3, "newAccount"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    const/4 v5, 0x0

    .line 800
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 802
    .local v0, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 801
    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    .line 804
    .local v2, "oldAccountType":Lcom/android/contacts/common/model/account/AccountType;
    iget-object v3, p3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 803
    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v1

    .line 806
    .local v1, "newAccountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/account/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 807
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "external activity called in rebind situation"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v3, :cond_0

    .line 809
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v3, p3, v4}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->setState(Lcom/android/contacts/common/model/RawContactDeltaList;)V

    .line 813
    invoke-direct {p0, p3, v1, p1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V

    goto :goto_0
.end method

.method private resolveLinkedContactPhotos(Lcom/android/contacts/editor/LinkedContactEditorView;)V
    .locals 21
    .param p1, "editor"    # Lcom/android/contacts/editor/LinkedContactEditorView;

    .prologue
    .line 1058
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    .local v15, "photoValueDeltaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v12, 0x0

    .line 1061
    .local v12, "defaultPhoto":Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v12    # "defaultPhoto":Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;
    .local v17, "rawContactDelta$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/common/model/RawContactDelta;

    .line 1062
    .local v16, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/common/model/RawContactDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1063
    new-instance v11, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v11, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/common/model/RawContactDelta;)V

    .line 1064
    .local v11, "contactPhotoWrapper":Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;
    invoke-static {v11}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-wrap0(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1065
    invoke-static {v11}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-get3(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    invoke-static {v11}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-get1(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1067
    move-object v12, v11

    .local v12, "defaultPhoto":Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;
    goto :goto_0

    .line 1075
    .end local v11    # "contactPhotoWrapper":Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;
    .end local v12    # "defaultPhoto":Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;
    .end local v16    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    if-nez v12, :cond_3

    .line 1076
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritableAndPhotoCapable(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1077
    new-instance v12, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;

    .line 1078
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/RawContactDeltaList;->getFirstWritablePhotoCapableRawContact(Landroid/content/Context;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v4

    .line 1077
    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/common/model/RawContactDelta;)V

    .line 1081
    .restart local v12    # "defaultPhoto":Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;
    invoke-static {v12}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-get3(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1082
    invoke-static {v12}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-wrap1(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)V

    .line 1089
    .end local v12    # "defaultPhoto":Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;
    :cond_3
    invoke-static {v12}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-get0(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v14

    .line 1098
    .local v14, "isPhotoFromWriteableAccount":Z
    if-nez v14, :cond_7

    .line 1099
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritableAndPhotoCapable(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v13, 0x0

    .line 1102
    .local v13, "isContactPhotoPreviewOnly":Z
    :goto_1
    invoke-static {v12}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-get4(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/contacts/editor/LinkedContactEditorView;->setPhotoRawContactId(J)V

    .line 1104
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/editor/LinkedContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v4

    invoke-static {v12}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-get2(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v5

    .line 1105
    invoke-static {v12}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-get3(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v6

    invoke-static {v12}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-get4(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v7

    .line 1106
    if-eqz v14, :cond_8

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 1104
    invoke-virtual/range {v4 .. v9}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 1108
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/editor/LinkedContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1109
    if-nez v13, :cond_a

    .line 1110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v14}, Lcom/android/contacts/editor/ContactEditorFragment;->bindPhotoHandlerForLinkedContact(Lcom/android/contacts/editor/LinkedContactEditorView;Ljava/util/ArrayList;Z)V

    .line 1115
    invoke-static {v12}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-get4(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v20

    .line 1116
    .local v20, "rawContactIdResult":Ljava/lang/Long;
    if-eqz v20, :cond_9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1117
    .local v18, "rawContactId":J
    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->updatedBitmapForRawContact(J)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1118
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/contacts/editor/LinkedContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 1057
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v18    # "rawContactId":J
    .end local v20    # "rawContactIdResult":Ljava/lang/Long;
    :cond_4
    :goto_4
    return-void

    .line 1085
    .end local v13    # "isContactPhotoPreviewOnly":Z
    .end local v14    # "isPhotoFromWriteableAccount":Z
    :cond_5
    return-void

    .line 1099
    .restart local v14    # "isPhotoFromWriteableAccount":Z
    :cond_6
    const/4 v13, 0x1

    .restart local v13    # "isContactPhotoPreviewOnly":Z
    goto :goto_1

    .line 1098
    .end local v13    # "isContactPhotoPreviewOnly":Z
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "isContactPhotoPreviewOnly":Z
    goto :goto_1

    .line 1106
    :cond_8
    const/4 v8, 0x1

    goto :goto_2

    .line 1116
    .restart local v20    # "rawContactIdResult":Ljava/lang/Long;
    :cond_9
    const-wide/16 v18, -0x1

    .restart local v18    # "rawContactId":J
    goto :goto_3

    .line 1120
    .end local v18    # "rawContactId":J
    .end local v20    # "rawContactIdResult":Ljava/lang/Long;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/editor/LinkedContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    goto :goto_4
.end method

.method private setDefaultAccountForSavingContacts()V
    .locals 7

    .prologue
    .line 1446
    const-string/jumbo v5, "com.sonyericsson.android.socialphonebook.action.NEW_CONTACT"

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1447
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1454
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContactDelta;

    .line 1455
    .local v3, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 1456
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v4

    .line 1457
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v1

    .line 1461
    .local v1, "dataSet":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v4, :cond_3

    .line 1462
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    .line 1466
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mChooseAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 1442
    return-void

    .line 1448
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v4    # "type":Ljava/lang/String;
    :cond_2
    return-void

    .line 1464
    .restart local v1    # "dataSet":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v0, v2, v4, v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    goto :goto_0
.end method

.method private setPhoto(JLandroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 7
    .param p1, "rawContactId"    # J
    .param p3, "photo"    # Landroid/graphics/Bitmap;
    .param p4, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 2513
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritableAndPhotoCapable(Z)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 2514
    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 2521
    :cond_1
    iget-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsLinkedContact:Z

    if-eqz v4, :cond_3

    .line 2522
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "rawContactDelta$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/RawContactDelta;

    .line 2523
    .local v2, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v1

    .line 2525
    .local v1, "isRawContactWriteable":Z
    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2526
    if-nez v1, :cond_2

    .line 2529
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;

    .line 2530
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/RawContactDeltaList;->getFirstWritablePhotoCapableRawContact(Landroid/content/Context;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v4

    .line 2529
    invoke-direct {v0, p0, v4}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/common/model/RawContactDelta;)V

    .line 2531
    .local v0, "contactPhotoWrapper":Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;
    invoke-static {v0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-wrap2(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;Lcom/android/contacts/common/model/RawContactDelta;)V

    .line 2532
    invoke-static {v0, p3}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-wrap3(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;Landroid/graphics/Bitmap;)V

    .line 2533
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->-get4(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->setUpdatedPhotoUri(JLandroid/net/Uri;)V

    .line 2535
    return-void

    .line 2540
    .end local v0    # "contactPhotoWrapper":Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;
    .end local v1    # "isRawContactWriteable":Z
    .end local v2    # "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v3    # "rawContactDelta$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ltz v4, :cond_4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gez v4, :cond_5

    .line 2542
    :cond_4
    sget-object v4, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Invalid bitmap passed to setPhoto()"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v4, :cond_6

    .line 2546
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v4, p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 2550
    :goto_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->setUpdatedPhotoUri(JLandroid/net/Uri;)V

    .line 2510
    return-void

    .line 2548
    :cond_6
    sget-object v4, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "The contact that requested the photo is no longer present."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setState(Lcom/android/contacts/common/model/RawContactDeltaList;)V
    .locals 1
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDeltaList;

    .prologue
    .line 2503
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    .line 2504
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2502
    return-void
.end method

.method private setUpdatedPhotoUri(JLandroid/net/Uri;)V
    .locals 3
    .param p1, "rawContactId"    # J
    .param p3, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2561
    return-void
.end method

.method private showAddAnotherFieldDialog(Lcom/android/contacts/editor/RawContactCommonEditorView;J)V
    .locals 6
    .param p1, "editor"    # Lcom/android/contacts/editor/RawContactCommonEditorView;
    .param p2, "rawContactId"    # J

    .prologue
    .line 1323
    invoke-virtual {p1}, Lcom/android/contacts/editor/RawContactCommonEditorView;->getSectionViewsWithoutFields()Ljava/util/ArrayList;

    move-result-object v1

    .line 1324
    .local v1, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/KindSectionView;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 1325
    .local v3, "titles":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1326
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1325
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1329
    :cond_0
    invoke-static {v3, p2, p3}, Lcom/android/contacts/editor/AddAnotherFieldDialog;->newInstance([Ljava/lang/String;J)Lcom/android/contacts/editor/AddAnotherFieldDialog;

    move-result-object v0

    .line 1330
    .local v0, "addAnotherFieldDialog":Lcom/android/contacts/editor/AddAnotherFieldDialog;
    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4}, Lcom/android/contacts/editor/AddAnotherFieldDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1331
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/android/contacts/editor/AddAnotherFieldDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/android/contacts/editor/AddAnotherFieldDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1322
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 1915
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->newInstance(I)Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;

    move-result-object v0

    .line 1916
    .local v0, "errorDialog":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1914
    return-void
.end method

.method private showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 5
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 2036
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2040
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 2041
    invoke-direct {p0, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritableAndPhotoCapable(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    .line 2042
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.action.JOIN_AGGREGATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2043
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.contacts.action.AGGREGATE_ID"

    .line 2044
    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 2043
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2045
    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2035
    return-void

    .line 2037
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updatedBitmapForRawContact(J)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "rawContactId"    # J

    .prologue
    .line 1354
    const/4 v0, 0x0

    .line 1356
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1357
    .local v2, "photoUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1358
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1363
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "photoUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 1360
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1361
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "File not found while trying to get Bitmap from Uri."

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private validateAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 566
    const-string/jumbo v0, "android.intent.action.EDIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    const-string/jumbo v0, "com.sonyericsson.android.socialphonebook.action.NEW_CONTACT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 566
    if-nez v0, :cond_0

    .line 568
    const-string/jumbo v0, "saveCompleted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 566
    if-eqz v0, :cond_1

    .line 569
    :cond_0
    return-void

    .line 571
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Action String "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    const-string/jumbo v2, ". Only support "

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    const-string/jumbo v2, "android.intent.action.EDIT"

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    const-string/jumbo v2, " or "

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    const-string/jumbo v2, "com.sonyericsson.android.socialphonebook.action.NEW_CONTACT"

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    const-string/jumbo v2, " or "

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 574
    const-string/jumbo v2, "saveCompleted"

    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected doEditSuggestedContact(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 2392
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 2393
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .line 2394
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v0

    .line 2393
    invoke-interface {v1, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 2389
    :cond_0
    return-void
.end method

.method protected doJoinSuggestedContact([J)V
    .locals 2
    .param p1, "rawContactIds"    # [J

    .prologue
    const/4 v1, 0x1

    .line 2342
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v1, :cond_1

    .line 2343
    :cond_0
    return-void

    .line 2346
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->setJoinWithRawContacts([J)V

    .line 2347
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 2341
    return-void
.end method

.method public doSaveAction()V
    .locals 1

    .prologue
    .line 1876
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isAdnSimDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1877
    return-void

    .line 1879
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 1875
    return-void
.end method

.method protected getContactId()J
    .locals 6

    .prologue
    .line 2224
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-eqz v3, :cond_1

    .line 2225
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    .line 2226
    .local v1, "rawContact":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    const-string/jumbo v4, "contact_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2227
    .local v0, "contactId":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 2228
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4

    .line 2232
    .end local v0    # "contactId":Ljava/lang/Long;
    .end local v1    # "rawContact":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v2    # "rawContact$iterator":Ljava/util/Iterator;
    :cond_1
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public getState()Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 1
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    return-object v0
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 584
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 585
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 586
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 588
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 590
    const-string/jumbo v1, "addToDefaultDirectory"

    .line 589
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    .line 591
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "newLocalProfile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 594
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "addContactToIceContacts"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddContactToICE:Z

    .line 595
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "addMimeType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddMimeType:Ljava/lang/String;

    .line 597
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "editIceContact"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditIceContact:Z

    .line 606
    :cond_0
    invoke-static {p2}, Lcom/android/contacts/util/ContactLoaderUtils;->isProfileUri(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 583
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 511
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 513
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->validateAction(Ljava/lang/String;)V

    .line 516
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 518
    .local v1, "hasIncomingState":Z
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-nez v2, :cond_3

    .line 522
    const-string/jumbo v2, "android.intent.action.EDIT"

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 534
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 535
    const-string/jumbo v2, "com.sonyericsson.android.socialphonebook.action.NEW_CONTACT"

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v2, :cond_4

    const/4 v0, 0x0

    .line 543
    :goto_2
    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 545
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 510
    :cond_1
    :goto_3
    return-void

    .line 516
    .end local v1    # "hasIncomingState":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "hasIncomingState":Z
    goto :goto_0

    .line 531
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    goto :goto_1

    .line 537
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.provider.extra.ACCOUNT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .local v0, "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    goto :goto_2

    .line 551
    .end local v0    # "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_5
    sget-object v2, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ContactEditorActivity was started with class name and action NEW_CONTACT but without specified Account in intent."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v2}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onError()V

    goto :goto_3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 2457
    iget v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 2458
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 2462
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2464
    return-void

    .line 2467
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2456
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 2470
    :pswitch_1
    if-eq p2, v5, :cond_3

    return-void

    .line 2471
    :cond_3
    if-eqz p3, :cond_2

    .line 2472
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2473
    .local v0, "contactId":J
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->joinAggregate(J)V

    goto :goto_0

    .line 2479
    .end local v0    # "contactId":J
    :pswitch_2
    if-eq p2, v5, :cond_4

    .line 2480
    return-void

    .line 2482
    :cond_4
    const-string/jumbo v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2483
    .local v2, "pickedUri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 2467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAggregationSuggestionChange()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 2264
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2265
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2266
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-nez v3, :cond_2

    .line 2267
    :cond_1
    return-void

    .line 2266
    :cond_2
    iget v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-ne v3, v7, :cond_1

    .line 2270
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->dismissPopupWindow(Landroid/widget/ListPopupWindow;)V

    .line 2272
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestedContactCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 2273
    return-void

    .line 2276
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    instance-of v3, v3, Lcom/android/contacts/editor/RawContactEditorView;

    if-nez v3, :cond_4

    .line 2277
    return-void

    .line 2280
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    const v4, 0x7f0e0136

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2281
    .local v1, "anchorView":Landroid/view/View;
    new-instance v3, Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    .line 2282
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2283
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2284
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 2285
    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 2286
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    .line 2287
    new-instance v4, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 2288
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v6}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v6

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v6, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v2

    .line 2289
    :cond_5
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v6}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestions()Ljava/util/List;

    move-result-object v6

    .line 2287
    invoke-direct {v4, v5, v2, p0, v6}, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;-><init>(Landroid/app/Activity;ZLcom/android/contacts/editor/AggregationSuggestionView$Listener;Ljava/util/List;)V

    .line 2286
    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2290
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2291
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    .line 2263
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 446
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 447
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    .line 448
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mChooseAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    .line 445
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/ContactEditorFragment$4;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsFactory;->getInstance(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector$RcsCallback;)Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    .line 627
    if-eqz p1, :cond_0

    .line 630
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 631
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 634
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 636
    if-nez p1, :cond_1

    .line 638
    new-instance v0, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v0}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 614
    :goto_0
    return-void

    .line 641
    :cond_1
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDeltaList;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    .line 642
    const-string/jumbo v0, "addContactToICE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddContactToICE:Z

    .line 643
    const-string/jumbo v0, "editIceContact"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditIceContact:Z

    .line 645
    const-string/jumbo v0, "photorequester"

    .line 644
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    .line 646
    const-string/jumbo v0, "viewidgenerator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ViewIdGenerator;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 647
    const-string/jumbo v0, "currentphotofile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoUri:Landroid/net/Uri;

    .line 648
    const-string/jumbo v0, "contactidforjoin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 649
    const-string/jumbo v0, "contactwritableforjoin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    .line 650
    const-string/jumbo v0, "showJoinSuggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 651
    const-string/jumbo v0, "enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 652
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 653
    const-string/jumbo v0, "newLocalProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 654
    const-string/jumbo v0, "contactDefaultPhotoId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLinkedContactDefaultPhotoId:J

    .line 655
    const-string/jumbo v0, "updatedPhotos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    .line 656
    const-string/jumbo v0, "selectedPhotoId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLinkedContactUserSelectedPhotoId:J

    .line 657
    const-string/jumbo v0, "customRingtone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 658
    const-string/jumbo v0, "customRingtoneStateChanged"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtoneStateChanged:Z

    .line 659
    const-string/jumbo v0, "sendToVoicemailState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailState:Z

    .line 661
    const-string/jumbo v0, "sendToVoicemailStateChanged"

    .line 660
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailStateChanged:Z

    .line 662
    const-string/jumbo v0, "selectedTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentlySelectedTab:Ljava/lang/String;

    .line 663
    const-string/jumbo v0, "displayNameRawContactId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDisplayNameRawContactId:J

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1561
    const v0, 0x7f110004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1560
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 498
    const v1, 0x7f040034

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 500
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    .line 501
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 502
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 504
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setHasOptionsMenu(Z)V

    .line 506
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->disconnect()V

    .line 486
    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    .line 489
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 491
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->quit()Z

    .line 479
    :cond_1
    return-void
.end method

.method public onDialogDismiss(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 2807
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onSaveFinished(Landroid/content/Intent;)V

    .line 2805
    :cond_0
    return-void
.end method

.method public onEditAction(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 2353
    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;-><init>()V

    .line 2354
    .local v1, "dialog":Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2355
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "contactUri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2356
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2357
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2358
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "edit"

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2351
    return-void
.end method

.method public onExternalEditorRequest(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;)V
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    .line 706
    return-void
.end method

.method public onFieldSelected(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "rawContactId"    # J

    .prologue
    .line 1340
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->findEditorByRawContactId(J)Lcom/android/contacts/editor/RawContactCommonEditorView;

    move-result-object v0

    .line 1341
    .local v0, "editor":Lcom/android/contacts/editor/RawContactCommonEditorView;
    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/RawContactCommonEditorView;->addNewField(I)V

    .line 1339
    :cond_0
    return-void
.end method

.method public onJoinAction(JLjava/util/List;)V
    .locals 8
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2296
    .local p3, "rawContactIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [J

    .line 2297
    .local v4, "rawContactIds":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 2298
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v3

    .line 2297
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2301
    :cond_0
    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;-><init>()V

    .line 2302
    .local v1, "dialog":Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2303
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "rawContactIds"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 2304
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2305
    const/4 v5, 0x0

    invoke-virtual {v1, p0, v5}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2307
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string/jumbo v6, "join"

    invoke-virtual {v1, v5, v6}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2295
    :goto_1
    return-void

    .line 2308
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public onJoinCompleted(Landroid/net/Uri;Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "aggregationResult"    # Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;
    .param p3, "wrapper"    # Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1884
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->SUCCESS:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    if-ne p2, v0, :cond_1

    .line 1885
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1886
    .local v6, "activity":Landroid/app/Activity;
    if-eqz p3, :cond_0

    if-eqz v6, :cond_0

    .line 1887
    check-cast v6, Lcom/android/contacts/activities/TransactionSafeActivity;

    .end local v6    # "activity":Landroid/app/Activity;
    invoke-virtual {v6}, Lcom/android/contacts/activities/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v0

    .line 1886
    if-eqz v0, :cond_0

    .line 1888
    invoke-static {p3}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->newInstance(Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;

    move-result-object v7

    .line 1889
    .local v7, "dialog":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1911
    .end local v7    # "dialog":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    move v3, v2

    :goto_1
    move-object v0, p0

    move-object v4, p1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;Z)V

    .line 1883
    return-void

    .line 1892
    :cond_1
    if-nez p2, :cond_2

    sget-object p2, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_UNKNOWN:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    .line 1894
    :cond_2
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->-getcom_sonyericsson_android_socialphonebook_util_AggregateUtils$AggregationResultSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 1906
    const v8, 0x7f0901fb

    .line 1909
    .local v8, "messageId":I
    :goto_2
    invoke-direct {p0, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->showErrorDialog(I)V

    goto :goto_0

    .line 1896
    .end local v8    # "messageId":I
    :pswitch_0
    const v8, 0x7f09020e

    .line 1897
    .restart local v8    # "messageId":I
    goto :goto_2

    .line 1899
    .end local v8    # "messageId":I
    :pswitch_1
    const v8, 0x7f09020d

    .line 1900
    .restart local v8    # "messageId":I
    goto :goto_2

    .line 1902
    .end local v8    # "messageId":I
    :pswitch_2
    const v8, 0x7f09020f

    .line 1903
    .restart local v8    # "messageId":I
    goto :goto_2

    .end local v8    # "messageId":I
    :cond_3
    move v3, v1

    .line 1911
    goto :goto_1

    .line 1894
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1626
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1650
    :pswitch_0
    return v0

    .line 1628
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v0

    return v0

    .line 1630
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1631
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v2

    .line 1630
    invoke-static {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->checkContactSizeAndShowErrorDialogIfNeeded(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doJoinContactAction()Z

    .line 1634
    :cond_0
    return v1

    .line 1636
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doPickRingtone()V

    .line 1637
    return v1

    .line 1640
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->revertIfChanged()V

    .line 1641
    return v1

    .line 1644
    :pswitch_5
    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailState:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailState:Z

    .line 1645
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailStateChanged:Z

    .line 1646
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailState:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1647
    return v1

    :cond_1
    move v0, v1

    .line 1644
    goto :goto_0

    .line 1626
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0251
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 464
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->pause()V

    .line 462
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x0

    .line 1566
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 1567
    return-void

    .line 1570
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1575
    const v6, 0x7f0e0251

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1576
    .local v2, "linkContactMenu":Landroid/view/MenuItem;
    const v6, 0x7f0e023b

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1577
    .local v0, "helpMenu":Landroid/view/MenuItem;
    const v6, 0x7f0e0252

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1578
    .local v4, "setRingtoneMenu":Landroid/view/MenuItem;
    const v6, 0x7f0e0253

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1581
    .local v3, "sendCallsToVoicemail":Landroid/view/MenuItem;
    iget-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsAdnAccountType:Z

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v6, v7

    :goto_0
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1585
    const-string/jumbo v6, "com.sonyericsson.android.socialphonebook.action.NEW_CONTACT"

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1587
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f090049

    invoke-static {v6, v0, v8}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    .line 1590
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1599
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactCanSetRingtone()Z

    move-result v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1601
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactCanSetSendToVoicemail()Z

    move-result v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1602
    iget-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailState:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1604
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v5

    .line 1605
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_6

    .line 1606
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1605
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1582
    .end local v1    # "i":I
    .end local v5    # "size":I
    :cond_2
    iget-boolean v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsChameleonPreloadContact:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_0

    .line 1591
    :cond_4
    const-string/jumbo v6, "android.intent.action.EDIT"

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1593
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f09004a

    invoke-static {v6, v0, v7}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    goto :goto_1

    .line 1596
    :cond_5
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1565
    .restart local v1    # "i":I
    .restart local v5    # "size":I
    :cond_6
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2683
    if-ne p1, v1, :cond_0

    .line 2684
    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 2691
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNeedToPhotoHandlerCallOnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2682
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 453
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 454
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 455
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNeedToPhotoHandlerCallOnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsNeedToPhotoHandlerCallOnClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->-get1(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->onClick(Landroid/view/View;)V

    .line 452
    :cond_0
    return-void
.end method

.method public onSaveCompleted(ZIZLandroid/net/Uri;Z)V
    .locals 16
    .param p1, "hadChanges"    # Z
    .param p2, "saveMode"    # I
    .param p3, "saveSucceeded"    # Z
    .param p4, "contactLookupUri"    # Landroid/net/Uri;
    .param p5, "isContactRemovedFromSpeedDial"    # Z

    .prologue
    .line 1921
    if-eqz p1, :cond_2

    .line 1922
    if-eqz p3, :cond_4

    .line 1923
    packed-switch p2, :pswitch_data_0

    .line 1941
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailStateChanged:Z

    if-eqz v12, :cond_0

    .line 1942
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    .line 1943
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailState:Z

    .line 1942
    move-object/from16 v0, p4

    invoke-static {v12, v0, v13}, Lcom/android/contacts/ContactSaveService;->createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v5

    .line 1944
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1946
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtoneStateChanged:Z

    if-eqz v12, :cond_1

    .line 1947
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    .line 1948
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 1947
    move-object/from16 v0, p4

    invoke-static {v12, v0, v13}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1949
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1951
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddContactToICE:Z

    if-eqz v12, :cond_2

    .line 1952
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    .line 1953
    const/4 v13, 0x1

    .line 1952
    move-object/from16 v0, p4

    invoke-static {v12, v0, v13}, Lcom/android/contacts/ContactSaveService;->createSetIceIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v11

    .line 1954
    .local v11, "service":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1960
    .end local v11    # "service":Landroid/content/Intent;
    :cond_2
    :goto_1
    packed-switch p2, :pswitch_data_1

    .line 1920
    :cond_3
    :goto_2
    return-void

    .line 1927
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v13, 0x7f090093

    .line 1928
    const/4 v14, 0x0

    .line 1927
    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1932
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v13, 0x7f090244

    .line 1933
    const/4 v14, 0x0

    .line 1932
    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1957
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v13, 0x7f090094

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1964
    :pswitch_3
    if-eqz p3, :cond_9

    if-eqz p4, :cond_9

    .line 1966
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v12, :cond_6

    const/4 v9, 0x0

    .line 1968
    :goto_3
    const-string/jumbo v6, "contacts"

    .line 1970
    .local v6, "legacyAuthority":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1971
    .local v10, "resultIntent":Landroid/content/Intent;
    const-string/jumbo v12, "android.intent.action.VIEW"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1972
    const-string/jumbo v12, "contacts"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1975
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1974
    move-object/from16 v0, p4

    invoke-static {v12, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1976
    .local v2, "contactId":J
    const-string/jumbo v12, "content://contacts/people"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1977
    .local v7, "legacyContentUri":Landroid/net/Uri;
    invoke-static {v7, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1979
    .local v8, "legacyUri":Landroid/net/Uri;
    invoke-virtual {v10, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1986
    .end local v2    # "contactId":J
    .end local v7    # "legacyContentUri":Landroid/net/Uri;
    .end local v8    # "legacyUri":Landroid/net/Uri;
    :goto_4
    const-string/jumbo v12, "com.sonyericsson.android.socialphonebook.action.NEW_CONTACT"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1987
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddContactToICE:Z

    if-eqz v12, :cond_8

    .line 1998
    .end local v6    # "legacyAuthority":Ljava/lang/String;
    .end local v10    # "resultIntent":Landroid/content/Intent;
    :cond_5
    :goto_5
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1999
    if-eqz p5, :cond_a

    .line 2000
    invoke-static {v10}, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->newInstance(Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;

    move-result-object v4

    .line 2002
    .local v4, "dialog":Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v12

    sget-object v13, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1966
    .end local v4    # "dialog":Lcom/sonyericsson/android/socialphonebook/speeddial/ContactRemovedFromSpeedDialDialog;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    .local v9, "requestAuthority":Ljava/lang/String;
    goto :goto_3

    .line 1982
    .end local v9    # "requestAuthority":Ljava/lang/String;
    .restart local v6    # "legacyAuthority":Ljava/lang/String;
    .restart local v10    # "resultIntent":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_4

    .line 1989
    :cond_8
    const-string/jumbo v12, "com.android.contacts.action.FIND_PROCESS_SINGLE_CONTACT"

    .line 1988
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1990
    const-string/jumbo v12, "suggestions_uri"

    .line 1991
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1990
    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 1994
    .end local v6    # "legacyAuthority":Ljava/lang/String;
    .end local v10    # "resultIntent":Landroid/content/Intent;
    :cond_9
    const/4 v10, 0x0

    .local v10, "resultIntent":Landroid/content/Intent;
    goto :goto_5

    .line 2005
    .end local v10    # "resultIntent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v12, v10}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onSaveFinished(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2011
    :pswitch_4
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 2013
    const/4 v12, 0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2014
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->showJoinAggregateActivity(Landroid/net/Uri;)V

    .line 2019
    :cond_b
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/contacts/editor/ContactEditorFragment;->setState(Lcom/android/contacts/common/model/RawContactDeltaList;)V

    .line 2020
    const-string/jumbo v12, "android.intent.action.EDIT"

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v12, v1, v13}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2021
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 2022
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_2

    .line 1923
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1960
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2424
    const-string/jumbo v0, "uri"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2425
    const-string/jumbo v0, "action"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2429
    const-string/jumbo v0, "state"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2431
    :cond_0
    const-string/jumbo v0, "addContactToICE"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddContactToICE:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2432
    const-string/jumbo v0, "editIceContact"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditIceContact:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2433
    const-string/jumbo v0, "photorequester"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2434
    const-string/jumbo v0, "viewidgenerator"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2435
    const-string/jumbo v0, "currentphotofile"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2436
    const-string/jumbo v0, "contactidforjoin"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2437
    const-string/jumbo v0, "contactwritableforjoin"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2438
    const-string/jumbo v0, "showJoinSuggestions"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2439
    const-string/jumbo v0, "enabled"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2440
    const-string/jumbo v0, "newLocalProfile"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2441
    const-string/jumbo v0, "status"

    iget v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2442
    const-string/jumbo v0, "contactDefaultPhotoId"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLinkedContactDefaultPhotoId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2443
    const-string/jumbo v0, "updatedPhotos"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2444
    const-string/jumbo v0, "selectedPhotoId"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLinkedContactUserSelectedPhotoId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2445
    const-string/jumbo v0, "customRingtone"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    const-string/jumbo v0, "customRingtoneStateChanged"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtoneStateChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2447
    const-string/jumbo v0, "sendToVoicemailState"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2448
    const-string/jumbo v0, "sendToVoicemailStateChanged"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailStateChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2449
    const-string/jumbo v0, "selectedTab"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentlySelectedTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    const-string/jumbo v0, "displayNameRawContactId"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDisplayNameRawContactId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2452
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2423
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 580
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 578
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 469
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 470
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->dismissAccountSwitcherPopupWindow()V

    .line 471
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->dismissPopupWindow(Landroid/widget/ListPopupWindow;)V

    .line 472
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->dismissPopupWindows()V

    .line 468
    :cond_0
    return-void
.end method

.method public onUnlinkConfirmed(J)V
    .locals 3
    .param p1, "rawContactId"    # J

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-nez v0, :cond_0

    .line 1671
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mState became null during the user\'s confirming unlink action. Cannot perform the save action."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    return-void

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/model/RawContactDeltaList;->unlinkRawContact(J)V

    .line 1677
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 1666
    return-void
.end method

.method public revertIfChanged()V
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1831
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 1827
    :goto_0
    return-void

    .line 1829
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    goto :goto_0
.end method

.method public save(I)Z
    .locals 14
    .param p1, "saveMode"    # I

    .prologue
    .line 1733
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1734
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1737
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAddContactToICE:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditIceContact:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1744
    :cond_3
    if-nez p1, :cond_4

    .line 1745
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1748
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1750
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 1751
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1752
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1755
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1756
    const/4 v0, 0x1

    return v0

    .line 1738
    :cond_5
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->NO_NUMBER_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->newInstance(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

    move-result-object v9

    .line 1739
    .local v9, "dialog":Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1740
    const/4 v0, 0x0

    return v0

    .line 1758
    .end local v9    # "dialog":Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_7

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;Z)V

    .line 1759
    const/4 v0, 0x1

    return v0

    .line 1758
    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    .line 1764
    :cond_8
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->setDefaultAccountForSavingContacts()V

    .line 1767
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    .line 1768
    const-string/jumbo v2, "saveMode"

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    .line 1769
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "saveCompleted"

    .line 1770
    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    iget v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPbrIndex:I

    move v3, p1

    .line 1767
    invoke-static/range {v0 .. v8}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object v11

    .line 1771
    .local v11, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1774
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    .line 1777
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1778
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1779
    .local v10, "formattedNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getPhoneNumbers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "number$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1781
    .local v12, "number":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1780
    invoke-static {v12, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1783
    .end local v12    # "number":Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    if-eqz v0, :cond_a

    .line 1784
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->connect()V

    .line 1785
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRcsConnector:Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;

    invoke-interface {v0, v10}, Lcom/sonyericsson/android/socialphonebook/rcs/RcsConnector;->requestCapabilitiesRefresh(Ljava/util/ArrayList;)V

    .line 1786
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRcsConnector.requestCapabilitiesRefresh(ArrayList) called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1787
    invoke-virtual {v10}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1786
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    .end local v10    # "formattedNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "number$iterator":Ljava/util/Iterator;
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public setAggregationSuggestionViewEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2399
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 2400
    return-void

    .line 2403
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    .line 2404
    const v4, 0x7f0e0045

    .line 2403
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2405
    .local v2, "itemList":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 2406
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2407
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2398
    :cond_1
    return-void
.end method

.method public setData(Lcom/android/contacts/common/model/Contact;)V
    .locals 13
    .param p1, "data"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    const/4 v12, 0x1

    .line 669
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    if-eqz v8, :cond_0

    .line 670
    sget-object v8, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Ignoring background change. This will have to be rebased later"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void

    .line 675
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getCustomRingtone()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    .line 676
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->isSendToVoicemail()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mSendToVoicemailState:Z

    .line 677
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getPhotoId()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLinkedContactDefaultPhotoId:J

    .line 679
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getNameRawContactId()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDisplayNameRawContactId:J

    .line 682
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 683
    .local v6, "rawContactsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/RawContact;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 684
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContact;

    .line 685
    .local v3, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v7

    .line 686
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContact;->getAccountType()Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 688
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 689
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 702
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v3    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .end local v7    # "type":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForExistingContact(Lcom/android/contacts/common/model/Contact;)V

    .line 667
    return-void

    .line 690
    .restart local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .restart local v1    # "dataSet":Ljava/lang/String;
    .restart local v3    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v8, :cond_3

    .line 691
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 693
    .local v4, "rawContactId":J
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .line 694
    new-instance v9, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v9, v2, v7, v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 696
    iget-object v11, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 693
    invoke-interface {v8, v9, v10, v11, v12}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    .line 698
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "rawContactId":J
    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 433
    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    if-eq v1, p1, :cond_1

    .line 434
    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 435
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 438
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->setAggregationSuggestionViewEnabled(Z)V

    .line 439
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 440
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 432
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return-void
.end method

.method public setIntentExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 754
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 755
    :cond_0
    return-void

    .line 758
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    .line 759
    .local v0, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "state$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    .line 760
    .local v1, "state":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    .line 761
    .local v3, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-virtual {v3}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 763
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v1, p1}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 753
    .end local v1    # "state":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v3    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_3
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .line 609
    return-void
.end method
