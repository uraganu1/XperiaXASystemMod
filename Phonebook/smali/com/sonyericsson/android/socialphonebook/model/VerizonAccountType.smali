.class public Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "VerizonAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE_PHONE:Ljava/lang/String; = "com.verizon.phone"

.field public static final ACCOUNT_TYPE_TABLET:Ljava/lang/String; = "com.verizon.tablet"

.field public static final ACCOUNT_TYPE_TABLET_SYNCABLE:Ljava/lang/String; = "com.vcast.mediamanager.account"

.field public static final ACCOUNT_TYPE_VIDEO_CALLING:Ljava/lang/String; = "com.sonymobile.videocalling"

.field private static final LIMIT_ADDRESS:I = 0x3

.field private static final LIMIT_EMAIL:I = 0x3

.field private static final LIMIT_EVENT:I = 0x1

.field private static final LIMIT_IM:I = 0x1

.field private static final LIMIT_NICKNAME:I = 0x1

.field private static final LIMIT_NOTE:I = 0x1

.field private static final LIMIT_ORGANIZATION:I = 0x1

.field private static final LIMIT_PHONE_LARGE:I = 0x5

.field private static final LIMIT_PHONE_SMALL:I = 0x1

.field private static final LIMIT_WEBSITE:I = 0x3

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authPackageName"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->accountType:Ljava/lang/String;

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->resourcePackageName:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 77
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 78
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindPhoneVerizon(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindEmailVerizon(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 80
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindSimplePostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 81
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindImVerizon(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 82
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindOrganizationVerizon(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 83
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 84
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 85
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 86
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 87
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addDataKindEventVerizon(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Problem building Verizon account type"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private addDataKindEmailVerizon(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f090080

    const/4 v4, 0x1

    const/4 v7, 0x3

    .line 170
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    .line 171
    const/16 v3, 0xf

    const v5, 0x7f0400dd

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 172
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$EmailActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 173
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 174
    const-string/jumbo v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 175
    const v0, 0x7f020052

    iput v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 176
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 177
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildEmailType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 182
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-object v6
.end method

.method private addDataKindEventVerizon(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0900b7

    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 114
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    .line 115
    const/16 v3, 0x96

    const v5, 0x7f040074

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 116
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 117
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 119
    const-string/jumbo v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 121
    invoke-static {}, Lcom/android/contacts/util/DateUtils;->getNoYearDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 122
    invoke-static {}, Lcom/android/contacts/util/DateUtils;->getFullDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 123
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7, v4}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 129
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 132
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-object v6
.end method

.method private addDataKindImVerizon(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f090081

    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 144
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/im"

    const/16 v3, 0x14

    .line 145
    const v5, 0x7f0400dd

    .line 144
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 146
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 147
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 150
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string/jumbo v0, "data5"

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 154
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 164
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const/16 v4, 0x21

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-object v6
.end method

.method private addDataKindOrganizationVerizon(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2001

    const/4 v4, 0x1

    .line 188
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    .line 189
    const v2, 0x7f0900b5

    const/4 v3, 0x5

    const v5, 0x7f0400dd

    .line 188
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 190
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 191
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data4"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 192
    iput v4, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 193
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 194
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 195
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data1"

    const v3, 0x7f09007a

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data4"

    const v3, 0x7f09007b

    invoke-direct {v1, v2, v3, v7}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const-string/jumbo v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 200
    return-object v6
.end method

.method private addDataKindPhoneVerizon(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f09007f

    const/16 v3, 0xa

    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v4, 0x1

    .line 204
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    .line 205
    const v5, 0x7f0400dd

    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 206
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const v0, 0x7f020065

    iput v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 207
    const v0, 0x7f09004c

    iput v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltDescriptionRes:I

    .line 208
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 209
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionAltHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 210
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 211
    const-string/jumbo v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 213
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPhoneType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 243
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    invoke-direct {v1, v3, v2, v8}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-object v6
.end method

.method private addDataKindSimplePostal(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x3

    .line 263
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataKind;

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    .line 264
    const v2, 0x7f090082

    const/16 v3, 0x19

    const v5, 0x7f0400dd

    .line 263
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 265
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PostalActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$PostalActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 266
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 267
    const-string/jumbo v0, "data2"

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 268
    const v0, 0x7f02005e

    iput v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 270
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 271
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->buildPostalType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 279
    iget-object v0, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data1"

    .line 280
    const v3, 0x7f090395

    const v4, 0x22071

    .line 279
    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    return-object v6
.end method

.method public static isVerizonAccountType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string/jumbo v0, "com.verizon.phone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.verizon.tablet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->isVerizonCloudAccountType(Ljava/lang/String;)Z

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVerizonCloudAccountType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string/jumbo v0, "com.vcast.mediamanager.account"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideoGroupCallingAccount(Ljava/lang/String;)Z
    .locals 1
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string/jumbo v0, "com.sonymobile.videocalling"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 251
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 252
    return-object v0
.end method

.method protected addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 139
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 140
    return-object v0
.end method

.method protected addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/android/contacts/common/model/account/BaseAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 258
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 259
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method
