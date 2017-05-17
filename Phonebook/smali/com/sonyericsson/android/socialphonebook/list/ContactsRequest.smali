.class public Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;
.super Ljava/lang/Object;
.source "ContactsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;,
        Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$1;
    }
.end annotation


# static fields
.field public static final ACTION_ALL_CONTACTS:I = 0xf

.field public static final ACTION_CONTACTS_WITH_PHONES:I = 0x11

.field public static final ACTION_CREATE_SHORTCUT_CALL:I = 0x78

.field public static final ACTION_CREATE_SHORTCUT_CONTACT:I = 0x6e

.field public static final ACTION_CREATE_SHORTCUT_SMS:I = 0x82

.field public static final ACTION_DEFAULT:I = 0xa

.field public static final ACTION_DIAL:I = 0x96

.field public static final ACTION_FREQUENT:I = 0x28

.field public static final ACTION_GROUP:I = 0x14

.field public static final ACTION_INSERT_OR_EDIT_CONTACT:I = 0x50

.field public static final ACTION_PICK_CONTACT:I = 0x3c

.field public static final ACTION_PICK_EMAIL:I = 0x69

.field public static final ACTION_PICK_OR_CREATE_CONTACT:I = 0x46

.field public static final ACTION_PICK_PHONE:I = 0x5a

.field public static final ACTION_PICK_POSTAL:I = 0x64

.field public static final ACTION_STARRED:I = 0x1e

.field public static final ACTION_STREQUENT:I = 0x32

.field public static final ACTION_UNKNOWN:I = 0x0

.field public static final ACTION_VIEW_CALL_LOG:I = 0xa0

.field public static final ACTION_VIEW_CALL_LOG_ITEM:I = 0xaa

.field public static final ACTION_VIEW_CONTACT:I = 0x8c

.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALER_ENTRY:Ljava/lang/String; = "DialerEntryActivity"


# instance fields
.field private mActionCode:I

.field private mCallUri:Landroid/net/Uri;

.field private mContactUri:Landroid/net/Uri;

.field private mContactUriConsumedForActionViewContact:Z

.field private mDialerIntent:Z

.field private mDirectorySearchEnabled:Z

.field private mIncludeProfile:Z

.field private mLegacyCompatibilityMode:Z

.field private mQueryString:Ljava/lang/String;

.field private mRedirectIntent:Landroid/content/Intent;

.field private mSearchMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mValid:Z


# direct methods
.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mActionCode:I

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mCallUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set10(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set11(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mValid:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDialerIntent:Z

    return p1
.end method

.method static synthetic -set4(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return p1
.end method

.method static synthetic -set5(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mIncludeProfile:Z

    return p1
.end method

.method static synthetic -set6(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return p1
.end method

.method static synthetic -set7(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic -set9(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mSearchMode:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mValid:Z

    .line 112
    const/16 v0, 0xa

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mActionCode:I

    .line 119
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDialerIntent:Z

    .line 30
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    .prologue
    .line 146
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mValid:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mValid:Z

    .line 147
    iget v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mActionCode:I

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mActionCode:I

    .line 148
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    .line 149
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 150
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mSearchMode:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mSearchMode:Z

    .line 151
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 152
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mIncludeProfile:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mIncludeProfile:Z

    .line 153
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 154
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDirectorySearchEnabled:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 155
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 156
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mCallUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mCallUri:Landroid/net/Uri;

    .line 157
    iget-boolean v0, p1, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDialerIntent:Z

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDialerIntent:Z

    .line 145
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mActionCode:I

    return v0
.end method

.method public getActivityTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCallUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mCallUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public isContactUriConsumedForActionViewContact()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mContactUriConsumedForActionViewContact:Z

    return v0
.end method

.method public isDialerIntent()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDialerIntent:Z

    return v0
.end method

.method public isDirectorySearchEnabled()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mSearchMode:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mValid:Z

    return v0
.end method

.method public setActionCode(I)V
    .locals 0
    .param p1, "actionCode"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mActionCode:I

    .line 236
    return-void
.end method

.method public setActivityTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 224
    return-void
.end method

.method public setCallUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "callUri"    # Landroid/net/Uri;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mCallUri:Landroid/net/Uri;

    .line 296
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 288
    return-void
.end method

.method public setContactUriConsumedForActionViewContact(Z)V
    .locals 0
    .param p1, "contactUriConsumedForActionViewContact"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mContactUriConsumedForActionViewContact:Z

    .line 313
    return-void
.end method

.method public setDialerIntent(Z)V
    .locals 0
    .param p1, "isDialerIntent"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDialerIntent:Z

    .line 304
    return-void
.end method

.method public setDirectorySearchEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 280
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .param p1, "includeProfile"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mIncludeProfile:Z

    .line 260
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 268
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setRedirectIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    .line 220
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mSearchMode:Z

    .line 244
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mValid:Z

    .line 212
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mIncludeProfile:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ContactsRequest:mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    const-string/jumbo v1, " mActionCode="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mActionCode:I

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const-string/jumbo v1, " mRedirectIntent="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string/jumbo v1, " mTitle="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string/jumbo v1, " mSearchMode="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mSearchMode:Z

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string/jumbo v1, " mQueryString="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string/jumbo v1, " mIncludeProfile="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mIncludeProfile:Z

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string/jumbo v1, " mLegacyCompatibilityMode="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string/jumbo v1, " mDirectorySearchEnabled="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDirectorySearchEnabled:Z

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string/jumbo v1, " mContactUri="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string/jumbo v1, " mCallUri="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mCallUri:Landroid/net/Uri;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, " mDialerIntent="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDialerIntent:Z

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "}"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mValid:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mActionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 193
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mSearchMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mIncludeProfile:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDirectorySearchEnabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mCallUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 200
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->mDialerIntent:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return-void

    :cond_0
    move v0, v2

    .line 189
    goto :goto_0

    :cond_1
    move v0, v2

    .line 193
    goto :goto_1

    :cond_2
    move v0, v2

    .line 195
    goto :goto_2

    :cond_3
    move v0, v2

    .line 196
    goto :goto_3

    :cond_4
    move v0, v2

    .line 197
    goto :goto_4

    :cond_5
    move v1, v2

    .line 200
    goto :goto_5
.end method
