.class public Lcom/android/contacts/common/model/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/Contact$Status;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAltDisplayName:Ljava/lang/String;

.field private mBlockVideoCall:Z

.field private final mCustomRingtone:Ljava/lang/String;

.field private mDirectoryAccountName:Ljava/lang/String;

.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryDisplayName:Ljava/lang/String;

.field private mDirectoryExportSupport:I

.field private final mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameSource:I

.field private final mException:Ljava/lang/Exception;

.field private mGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private mIndicatePhoneOrSimContact:I

.field private mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSdnContact:I

.field private final mIsUserProfile:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mPresence:Ljava/lang/Integer;

.field private mRawContacts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedUri:Landroid/net/Uri;

.field private final mSendToVoicemail:Z

.field private mSimIndex:I

.field private mSlot:I

.field private final mStarred:Z

.field private final mStatus:Lcom/android/contacts/common/model/Contact$Status;

.field private mStatuses:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/common/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailPhotoBinaryData:[B

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 520
    const-class v0, Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/Contact;->TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V
    .locals 2
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "lookupUri"    # Landroid/net/Uri;
    .param p4, "directoryId"    # J
    .param p6, "lookupKey"    # Ljava/lang/String;
    .param p7, "id"    # J
    .param p9, "nameRawContactId"    # J
    .param p11, "displayNameSource"    # I
    .param p12, "photoId"    # J
    .param p14, "photoUri"    # Ljava/lang/String;
    .param p15, "displayName"    # Ljava/lang/String;
    .param p16, "altDisplayName"    # Ljava/lang/String;
    .param p17, "phoneticName"    # Ljava/lang/String;
    .param p18, "starred"    # Z
    .param p19, "presence"    # Ljava/lang/Integer;
    .param p20, "sendToVoicemail"    # Z
    .param p21, "customRingtone"    # Ljava/lang/String;
    .param p22, "isUserProfile"    # Z

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/contacts/common/model/Contact;->mSlot:I

    .line 522
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/contacts/common/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 523
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/common/model/Contact;->mBlockVideoCall:Z

    .line 524
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/contacts/common/model/Contact;->mSimIndex:I

    .line 525
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:I

    .line 159
    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->LOADED:Lcom/android/contacts/common/model/Contact$Status;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    .line 161
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 162
    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 163
    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 164
    iput-wide p4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    .line 165
    iput-object p6, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 166
    iput-wide p7, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 169
    iput-wide p9, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    .line 170
    iput p11, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    .line 171
    iput-wide p12, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    .line 172
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 176
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    .line 177
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 179
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    .line 180
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 181
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZIZ)V
    .locals 1
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "lookupUri"    # Landroid/net/Uri;
    .param p4, "directoryId"    # J
    .param p6, "lookupKey"    # Ljava/lang/String;
    .param p7, "id"    # J
    .param p9, "nameRawContactId"    # J
    .param p11, "displayNameSource"    # I
    .param p12, "photoId"    # J
    .param p14, "photoUri"    # Ljava/lang/String;
    .param p15, "displayName"    # Ljava/lang/String;
    .param p16, "altDisplayName"    # Ljava/lang/String;
    .param p17, "phoneticName"    # Ljava/lang/String;
    .param p18, "starred"    # Z
    .param p19, "presence"    # Ljava/lang/Integer;
    .param p20, "sendToVoicemail"    # Z
    .param p21, "customRingtone"    # Ljava/lang/String;
    .param p22, "isUserProfile"    # Z
    .param p23, "isSdnContact"    # I
    .param p24, "blockVideoCall"    # Z

    .prologue
    .line 535
    invoke-direct/range {p0 .. p22}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V

    .line 538
    move/from16 v0, p23

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:I

    .line 539
    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mBlockVideoCall:Z

    .line 534
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "status"    # Lcom/android/contacts/common/model/Contact$Status;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, -0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mSlot:I

    .line 522
    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 523
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mBlockVideoCall:Z

    .line 524
    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mSimIndex:I

    .line 525
    iput v2, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:I

    .line 112
    sget-object v0, Lcom/android/contacts/common/model/Contact$Status;->ERROR:Lcom/android/contacts/common/model/Contact$Status;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ERROR result must have exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 116
    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    .line 117
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 118
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 119
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 120
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    .line 121
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 122
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    .line 123
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 124
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 125
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    .line 126
    iput v2, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    .line 127
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    .line 128
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 132
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    .line 133
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 134
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 135
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    .line 136
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 137
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    .line 139
    invoke-direct {p0}, Lcom/android/contacts/common/model/Contact;->initSIMMembers()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact;)V
    .locals 2
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "from"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mSlot:I

    .line 522
    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 523
    iput-boolean v1, p0, Lcom/android/contacts/common/model/Contact;->mBlockVideoCall:Z

    .line 524
    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mSimIndex:I

    .line 525
    iput v1, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:I

    .line 185
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 187
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 188
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    .line 189
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 190
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 191
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    .line 192
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 193
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    .line 194
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    .line 195
    iget v0, p2, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    .line 196
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    .line 197
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 198
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 199
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 200
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 201
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    .line 202
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 203
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 204
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 205
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 207
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 208
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 209
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 210
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 211
    iget v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    .line 213
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    .line 215
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    .line 216
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    .line 217
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 218
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    .line 221
    invoke-direct {p0, p2}, Lcom/android/contacts/common/model/Contact;->initSIMMembers(Lcom/android/contacts/common/model/Contact;)V

    .line 184
    return-void
.end method

.method public static forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/common/model/Contact;
    .locals 2
    .param p0, "requestedUri"    # Landroid/net/Uri;
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 144
    new-instance v0, Lcom/android/contacts/common/model/Contact;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->ERROR:Lcom/android/contacts/common/model/Contact$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 3
    .param p0, "requestedUri"    # Landroid/net/Uri;

    .prologue
    .line 148
    new-instance v0, Lcom/android/contacts/common/model/Contact;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/common/model/Contact$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private initSIMMembers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 546
    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 547
    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mSimIndex:I

    .line 548
    iput-boolean v1, p0, Lcom/android/contacts/common/model/Contact;->mBlockVideoCall:Z

    .line 549
    iput v1, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:I

    .line 545
    return-void
.end method

.method private initSIMMembers(Lcom/android/contacts/common/model/Contact;)V
    .locals 3
    .param p1, "from"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 553
    sget-object v0, Lcom/android/contacts/common/model/Contact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initSIMMembers begin mIndicatePhoneOrSimContact , mSimIndex , mBlockVideoCall, mIsSdnContact : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 554
    iget v2, p0, Lcom/android/contacts/common/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 554
    const-string/jumbo v2, " , "

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 555
    iget v2, p0, Lcom/android/contacts/common/model/Contact;->mSimIndex:I

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 555
    const-string/jumbo v2, " , "

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 555
    iget-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mBlockVideoCall:Z

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 555
    const-string/jumbo v2, " , "

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 555
    iget v2, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:I

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget v0, p1, Lcom/android/contacts/common/model/Contact;->mIndicatePhoneOrSimContact:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 557
    iget v0, p1, Lcom/android/contacts/common/model/Contact;->mSimIndex:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mSimIndex:I

    .line 559
    iget v0, p1, Lcom/android/contacts/common/model/Contact;->mSlot:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mSlot:I

    .line 560
    iget-boolean v0, p1, Lcom/android/contacts/common/model/Contact;->mBlockVideoCall:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mBlockVideoCall:Z

    .line 561
    iget v0, p1, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:I

    .line 562
    sget-object v0, Lcom/android/contacts/common/model/Contact;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initSIMMembers end mIndicatePhoneOrSimContact , mSimIndex , mBlockVideoCall, mIsSdnContact : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 563
    iget v2, p0, Lcom/android/contacts/common/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 563
    const-string/jumbo v2, " , "

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 564
    iget v2, p0, Lcom/android/contacts/common/model/Contact;->mSimIndex:I

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 564
    const-string/jumbo v2, " , "

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 564
    iget-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mBlockVideoCall:Z

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 564
    const-string/jumbo v2, " , "

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 564
    iget v2, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:I

    .line 562
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void
.end method


# virtual methods
.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    return-wide v0
.end method

.method public getGroupMetaData()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getId()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    return-wide v0
.end method

.method public getIndicate()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/android/contacts/common/model/Contact;->mIndicatePhoneOrSimContact:I

    return v0
.end method

.method public getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 347
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContacts()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getThumbnailPhotoBinaryData()[B
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mThumbnailPhotoBinaryData:[B

    return-object v0
.end method

.method public isDirectoryEntry()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 396
    iget-wide v2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 397
    iget-wide v2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 396
    :cond_0
    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->LOADED:Lcom/android/contacts/common/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserProfile()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    return v0
.end method

.method public setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "directoryType"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "exportSupport"    # I

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 233
    iput-object p4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 234
    iput p5, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    .line 229
    return-void
.end method

.method setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "groups":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/GroupMetaData;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    .line 515
    return-void
.end method

.method public setIndicate(I)V
    .locals 0
    .param p1, "indicate"    # I

    .prologue
    .line 578
    iput p1, p0, Lcom/android/contacts/common/model/Contact;->mIndicatePhoneOrSimContact:I

    .line 577
    return-void
.end method

.method setInvitableAccountTypes(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "accountTypes":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/account/AccountType;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 511
    return-void
.end method

.method setPhotoBinaryData([B)V
    .locals 0
    .param p1, "photoBinaryData"    # [B

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    .line 237
    return-void
.end method

.method setRawContacts(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/RawContact;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 503
    return-void
.end method

.method public setSimIndex(I)V
    .locals 0
    .param p1, "simIndex"    # I

    .prologue
    .line 585
    iput p1, p0, Lcom/android/contacts/common/model/Contact;->mSimIndex:I

    .line 584
    return-void
.end method

.method public setSlot(I)V
    .locals 0
    .param p1, "slot"    # I

    .prologue
    .line 606
    iput p1, p0, Lcom/android/contacts/common/model/Contact;->mSlot:I

    .line 605
    return-void
.end method

.method setStatuses(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/common/util/DataStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "statuses":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/Long;Lcom/android/contacts/common/util/DataStatus;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 507
    return-void
.end method

.method setThumbnailPhotoBinaryData([B)V
    .locals 0
    .param p1, "photoBinaryData"    # [B

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mThumbnailPhotoBinaryData:[B

    .line 241
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",lookupkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 500
    const-string/jumbo v1, ",uri="

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 500
    const-string/jumbo v1, ",status="

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 500
    const-string/jumbo v1, "}"

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
