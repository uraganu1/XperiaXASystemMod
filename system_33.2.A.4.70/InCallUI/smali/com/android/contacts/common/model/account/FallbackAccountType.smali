.class public Lcom/android/contacts/common/model/account/FallbackAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "FallbackAccountType.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->accountType:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->dataSet:Ljava/lang/String;

    .line 42
    const v2, 0x7f0b0198

    iput v2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->titleRes:I

    .line 43
    const/high16 v2, 0x7f030000

    iput v2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->iconRes:I

    .line 44
    const-string/jumbo v2, "FallbackAccountType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[FallbackAccountType]new,iconRes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->iconRes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->resourcePackageName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 49
    new-instance v1, Landroid/telephony/TelephonyManager;

    invoke-direct {v1, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 64
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 69
    sget-boolean v2, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_VOLTE_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 70
    sget-boolean v2, Lcom/mediatek/contacts/ContactsSystemProperties;->MTK_IMS_SUPPORT:Z

    .line 69
    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;->addDataKindImsCall(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 75
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/common/model/account/FallbackAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    const-string/jumbo v2, "FallbackAccountType"

    const-string/jumbo v3, "Problem building account type"

    invoke-static {v2, v3, v0}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method
