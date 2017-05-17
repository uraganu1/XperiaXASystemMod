.class Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactPhotoWrapper"
.end annotation


# instance fields
.field private accountType:Lcom/android/contacts/common/model/account/AccountType;

.field private isContactDefaultPhoto:Z

.field private photoDataKind:Lcom/android/contacts/common/model/dataitem/DataKind;

.field private photoValueHasContent:Z

.field private photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

.field private rawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->accountType:Lcom/android/contacts/common/model/account/AccountType;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->isContactDefaultPhoto:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoDataKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->rawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->hasContent()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->initializePhotoValuesDelta()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;Lcom/android/contacts/common/model/RawContactDelta;)V
    .locals 0
    .param p1, "oldRawContactDelta"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->replaceDefaultRawContactForHandlingPhoto(Lcom/android/contacts/common/model/RawContactDelta;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->storePhotoInValuesDelta(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/common/model/RawContactDelta;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p2, "rawContactDelta"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 970
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->isContactDefaultPhoto:Z

    .line 973
    iput-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValueHasContent:Z

    .line 974
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->rawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    .line 975
    invoke-static {p1}, Lcom/android/contacts/editor/ContactEditorFragment;->-get2(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->accountType:Lcom/android/contacts/common/model/account/AccountType;

    .line 976
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->accountType:Lcom/android/contacts/common/model/account/AccountType;

    const-string/jumbo v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoDataKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 977
    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    invoke-virtual {p2, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    .line 978
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    const-string/jumbo v3, "data15"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 979
    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValueHasContent:Z

    .line 980
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 986
    .local v0, "photoId":J
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->userSelectedDefaultPhoto()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->isPhotoDefaultInDatabase(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 987
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->isPhotoSelectedByUser(J)Z

    move-result v2

    .line 986
    if-eqz v2, :cond_2

    .line 988
    :cond_1
    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->isContactDefaultPhoto:Z

    .line 991
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->userSelectedDefaultPhoto()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 992
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->isPhotoSelectedByUser(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 993
    invoke-direct {p0, v5}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->setSuperPrimaryIfNeeded(Z)V

    .line 970
    .end local v0    # "photoId":J
    :cond_3
    :goto_0
    return-void

    .line 995
    .restart local v0    # "photoId":J
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->setSuperPrimaryIfNeeded(Z)V

    goto :goto_0
.end method

.method private hasContent()Z
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValueHasContent:Z

    return v0
.end method

.method private initializePhotoValuesDelta()V
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->rawContactDelta:Lcom/android/contacts/common/model/RawContactDelta;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoDataKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    .line 1020
    return-void
.end method

.method private isPhotoDefaultInDatabase(J)Z
    .locals 3
    .param p1, "photoId"    # J

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get9(Lcom/android/contacts/editor/ContactEditorFragment;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhotoSelectedByUser(J)Z
    .locals 3
    .param p1, "photoId"    # J

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get10(Lcom/android/contacts/editor/ContactEditorFragment;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private replaceDefaultRawContactForHandlingPhoto(Lcom/android/contacts/common/model/RawContactDelta;)V
    .locals 2
    .param p1, "oldRawContactDelta"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    .line 1031
    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    .line 1030
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    .line 1032
    .local v0, "oldPhotoValuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isSuperPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->setSuperPrimary(Z)V

    .line 1038
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->initializePhotoValuesDelta()V

    .line 1039
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->setAsDefaultPhoto()V

    .line 1028
    return-void
.end method

.method private setAsDefaultPhoto()V
    .locals 4

    .prologue
    .line 1051
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->setSuperPrimaryIfNeeded(Z)V

    .line 1052
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->-set6(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 1053
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->-set7(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 1050
    return-void
.end method

.method private setSuperPrimaryIfNeeded(Z)V
    .locals 1
    .param p1, "setSuperPrimary"    # Z

    .prologue
    .line 1002
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isSuperPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isSuperPrimary()Z

    move-result v0

    .line 1002
    if-eqz v0, :cond_2

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->setSuperPrimary(Z)V

    .line 1001
    :cond_2
    return-void
.end method

.method private storePhotoInValuesDelta(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 1043
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    .line 1044
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v3}, Lcom/android/contacts/editor/ContactEditorFragment;->-get5(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v2

    .line 1045
    .local v2, "size":I
    invoke-static {p1, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1046
    .local v1, "scaledPhoto":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 1047
    .local v0, "compressedPhoto":[B
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->photoValuesDelta:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/model/ValuesDelta;->setPhoto([B)V

    .line 1042
    :cond_0
    return-void
.end method

.method private userSelectedDefaultPhoto()Z
    .locals 4

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ContactPhotoWrapper;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get10(Lcom/android/contacts/editor/ContactEditorFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
