.class public Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "TmoAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sonyericsson.community.sync.account"

.field private static final TAG:Ljava/lang/String; = "TmoAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 30
    const-string/jumbo v1, "vnd.android.cursor.item/vnd.sonyericsson.community.sync.account"

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->accountType:Ljava/lang/String;

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->resourcePackageName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 36
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 37
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 38
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 39
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/model/TmoAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    const-string/jumbo v1, "TmoAccountType"

    const-string/jumbo v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
