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
.field public static final INVALID_ID:I = -0x1

.field private static final RCS_PRESENCE_DATA_COLUMN:Ljava/lang/String; = "data2"

.field private static final TAPI_RCS_CAPABLE_CODE:I = 0x1

.field private static final TAPI_RCS_STATUS_MIME:Ljava/lang/String; = "vnd.android.cursor.item/com.gsma.services.rcs.registration-state"


# instance fields
.field private final mAltDisplayName:Ljava/lang/String;

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
            "Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

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

.field private mIsAdnContact:Z

.field private mIsChameleonPreloadContact:Z

.field private mIsIceContact:Z

.field private final mIsInVisibleGroup:Z

.field private mIsSdnContact:Z

.field private final mIsUserProfile:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoFileId:J

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

.field private final mStarred:Z

.field private final mStatus:Lcom/android/contacts/common/model/Contact$Status;

.field private mStatuses:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/android/socialphonebook/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZJ)V
    .locals 4
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
    .param p23, "isInVisibleGroup"    # Z
    .param p24, "photoFileId"    # J

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    sget-object v2, Lcom/android/contacts/common/model/Contact$Status;->LOADED:Lcom/android/contacts/common/model/Contact$Status;

    iput-object v2, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 184
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    .line 185
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 186
    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 187
    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 188
    iput-wide p4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    .line 189
    iput-object p6, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 190
    iput-wide p7, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    .line 191
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 192
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 193
    iput-wide p9, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    .line 194
    iput p11, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    .line 195
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    .line 196
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 198
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 199
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 200
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    .line 201
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 202
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 203
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    .line 204
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 205
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    .line 206
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsAdnContact:Z

    .line 207
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:Z

    .line 208
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsIceContact:Z

    .line 209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsChameleonPreloadContact:Z

    .line 210
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsInVisibleGroup:Z

    .line 211
    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoFileId:J

    .line 182
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "status"    # Lcom/android/contacts/common/model/Contact$Status;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Lcom/android/contacts/common/model/Contact$Status;->ERROR:Lcom/android/contacts/common/model/Contact$Status;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ERROR result must have exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 137
    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    .line 138
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 139
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 140
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 141
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    .line 142
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 143
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    .line 144
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 145
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 146
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    .line 147
    iput v2, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    .line 148
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    .line 149
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mPhotoFileId:J

    .line 150
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 152
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 154
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    .line 155
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 156
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 157
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    .line 158
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    .line 160
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsAdnContact:Z

    .line 161
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsIceContact:Z

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsInVisibleGroup:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsChameleonPreloadContact:Z

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact;)V
    .locals 2
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "from"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 217
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 218
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    .line 219
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 220
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 221
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    .line 222
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 223
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    .line 224
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    .line 225
    iget v0, p2, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    .line 226
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    .line 227
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoFileId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoFileId:J

    .line 228
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 229
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 230
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 231
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 232
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    .line 233
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 234
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 235
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 236
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 238
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 239
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 240
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 241
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 242
    iget v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    .line 244
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    .line 246
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    .line 247
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    .line 248
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 249
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    .line 250
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mIsAdnContact:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsAdnContact:Z

    .line 251
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:Z

    .line 252
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mIsIceContact:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsIceContact:Z

    .line 253
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mIsInVisibleGroup:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsInVisibleGroup:Z

    .line 254
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mIsChameleonPreloadContact:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsChameleonPreloadContact:Z

    .line 214
    return-void
.end method

.method public static forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/common/model/Contact;
    .locals 2
    .param p0, "requestedUri"    # Landroid/net/Uri;
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 168
    new-instance v0, Lcom/android/contacts/common/model/Contact;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->ERROR:Lcom/android/contacts/common/model/Contact$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 3
    .param p0, "requestedUri"    # Landroid/net/Uri;

    .prologue
    .line 172
    new-instance v0, Lcom/android/contacts/common/model/Contact;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/common/model/Contact$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private getRcsRawContactIfAny()Lcom/android/contacts/common/model/RawContact;
    .locals 4

    .prologue
    .line 590
    iget-object v3, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    .line 591
    .local v1, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getAccountType()Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    iget-object v0, v3, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 592
    .local v0, "currentAccountType":Ljava/lang/String;
    const-string/jumbo v3, "com.gsma.rcs"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    return-object v1

    .line 596
    .end local v0    # "currentAccountType":Ljava/lang/String;
    .end local v1    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private updateIsChameleonPreloadContact()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 624
    iput-boolean v1, p0, Lcom/android/contacts/common/model/Contact;->mIsChameleonPreloadContact:Z

    .line 626
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->isChameleonPreloadedContact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsChameleonPreloadContact:Z

    .line 623
    :cond_0
    return-void
.end method

.method private updateIsSimContactType()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 605
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:Z

    .line 606
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsAdnContact:Z

    .line 609
    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 610
    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "account_type":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 612
    return-void

    .line 615
    :cond_0
    const-string/jumbo v1, "com.sonyericsson.sdncontacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 616
    iput-boolean v3, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:Z

    .line 602
    .end local v0    # "account_type":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 617
    .restart local v0    # "account_type":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    iput-boolean v3, p0, Lcom/android/contacts/common/model/Contact;->mIsAdnContact:Z

    goto :goto_0
.end method


# virtual methods
.method public createRawContactDeltaList()Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v0

    return-object v0
.end method

.method public getAltDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 489
    iget-object v5, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 490
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 491
    const-string/jumbo v6, "Cannot extract content values from an aggregated contact"

    .line 490
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 494
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContact;

    .line 495
    .local v3, "rawContact":Lcom/android/contacts/common/model/RawContact;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dataItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 497
    .local v0, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    .end local v0    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    :cond_1
    iget-wide v6, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    if-eqz v5, :cond_3

    .line 504
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 505
    .local v2, "photo":Landroid/content/ContentValues;
    const-string/jumbo v5, "data15"

    iget-object v6, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 506
    const-string/jumbo v5, "mimetype"

    const-string/jumbo v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .end local v2    # "photo":Landroid/content/ContentValues;
    :cond_2
    return-object v4

    .line 503
    :cond_3
    iget-boolean v5, p0, Lcom/android/contacts/common/model/Contact;->mIsInVisibleGroup:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    if-eqz v5, :cond_2

    iget-wide v6, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    goto :goto_1
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryExportSupport()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    return v0
.end method

.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 416
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameSource()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFirstWritableRawContactId(Landroid/content/Context;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    .line 430
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v3

    if-eqz v3, :cond_0

    return-wide v4

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rawContact$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    .line 434
    .local v1, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getAccountType()Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 435
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 436
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->isChameleonPreloadedContact()Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4

    .line 441
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_2
    return-wide v4
.end method

.method public getGroupMetaData()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    return-wide v0
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
    .line 404
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameRawContactId()J
    .locals 2

    .prologue
    .line 351
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    return-wide v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBinaryData()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 485
    :cond_0
    return-object v1
.end method

.method public getPhotoFileId()J
    .locals 2

    .prologue
    .line 371
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoFileId:J

    return-wide v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

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
    .line 408
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getRequestedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    return v0
.end method

.method public getStatuses()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/android/socialphonebook/util/DataStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasHighResPhoto()Z
    .locals 4

    .prologue
    .line 554
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoFileId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdnContact()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsAdnContact:Z

    return v0
.end method

.method public isChameleonPreloadContact()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsChameleonPreloadContact:Z

    return v0
.end method

.method public isDirectoryEntry()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 420
    iget-wide v2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 421
    iget-wide v2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 420
    :cond_0
    return v0
.end method

.method public isDisplayNameFromOrganization()Z
    .locals 2

    .prologue
    .line 363
    iget v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    const/16 v1, 0x1e

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->ERROR:Lcom/android/contacts/common/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIceContact()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsIceContact:Z

    return v0
.end method

.method public isInVisibleGroup()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsInVisibleGroup:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 347
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

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/common/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRcseCapable()Z
    .locals 4

    .prologue
    .line 558
    iget-object v2, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 559
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sonyericsson/android/socialphonebook/util/DataStatus;>;"
    const-string/jumbo v3, "com.sonymobile.rcs"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->getStatusPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->getPresence()I

    move-result v2

    const/4 v3, 0x5

    if-ne v3, v2, :cond_0

    .line 561
    const/4 v2, 0x1

    return v2

    .line 564
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sonyericsson/android/socialphonebook/util/DataStatus;>;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isSdnContact()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:Z

    return v0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method public isSimContact()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsAdnContact:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsSdnContact:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportContact(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rawContact$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    .line 453
    .local v1, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getAccountType()Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 454
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    const-string/jumbo v3, "com.sonymobile.support"

    iget-object v4, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    const/4 v3, 0x1

    return v3

    .line 458
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_2
    return v5
.end method

.method public isTapiRcsCapable(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 569
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isRcsTapiEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 570
    return v5

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/model/Contact;->getRcsRawContactIfAny()Lcom/android/contacts/common/model/RawContact;

    move-result-object v2

    .line 574
    .local v2, "rcsRawContact":Lcom/android/contacts/common/model/RawContact;
    if-nez v2, :cond_1

    .line 575
    return v5

    .line 578
    :cond_1
    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dataItem$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 579
    .local v0, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    const-string/jumbo v6, "vnd.android.cursor.item/com.gsma.services.rcs.registration-state"

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 581
    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v6

    const-string/jumbo v7, "data2"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 582
    .local v3, "statusCode":I
    if-ne v3, v4, :cond_3

    :goto_0
    return v4

    :cond_3
    move v4, v5

    goto :goto_0

    .line 586
    .end local v0    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    .end local v3    # "statusCode":I
    :cond_4
    return v5
.end method

.method public isUserProfile()Z
    .locals 1

    .prologue
    .line 530
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
    .line 262
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 263
    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 264
    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 265
    iput-object p4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 266
    iput p5, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    .line 261
    return-void
.end method

.method setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, "groups":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/sonyericsson/android/socialphonebook/group/data/GroupMetaData;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    .line 651
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
    .line 648
    .local p1, "accountTypes":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/account/AccountType;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 647
    return-void
.end method

.method setIsIceContact(Z)V
    .locals 0
    .param p1, "isIceContact"    # Z

    .prologue
    .line 656
    iput-boolean p1, p0, Lcom/android/contacts/common/model/Contact;->mIsIceContact:Z

    .line 655
    return-void
.end method

.method setPhotoBinaryData([B)V
    .locals 0
    .param p1, "photoBinaryData"    # [B

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    .line 269
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
    .line 638
    .local p1, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/RawContact;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 639
    invoke-direct {p0}, Lcom/android/contacts/common/model/Contact;->updateIsSimContactType()V

    .line 640
    invoke-direct {p0}, Lcom/android/contacts/common/model/Contact;->updateIsChameleonPreloadContact()V

    .line 637
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
            "Lcom/sonyericsson/android/socialphonebook/util/DataStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p1, "statuses":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/Long;Lcom/sonyericsson/android/socialphonebook/util/DataStatus;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 643
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 633
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

    .line 634
    const-string/jumbo v1, ",uri="

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 634
    const-string/jumbo v1, ",status="

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 634
    const-string/jumbo v1, "}"

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
