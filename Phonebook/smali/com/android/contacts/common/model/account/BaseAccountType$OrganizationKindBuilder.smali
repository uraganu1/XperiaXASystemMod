.class Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrganizationKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1341
    const-string/jumbo v0, "organization"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1349
    const-string/jumbo v5, "vnd.android.cursor.item/organization"

    .line 1351
    new-instance v10, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v0, "data1"

    invoke-direct {v10, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    .line 1352
    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v0, "data4"

    invoke-direct {v11, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    .line 1348
    const/4 v4, 0x0

    .line 1349
    const/4 v6, 0x0

    const v7, 0x7f0900b5

    .line 1350
    const/4 v8, 0x5

    const v9, 0x7f0400dd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    .line 1348
    invoke-virtual/range {v0 .. v11}, Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v12

    .line 1354
    .local v12, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data1"

    const v3, 0x7f09007a

    .line 1355
    const/16 v4, 0x2001

    .line 1354
    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1356
    iget-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data4"

    const v3, 0x7f09007b

    .line 1357
    const/16 v4, 0x2001

    .line 1356
    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-virtual {p0, v12}, Lcom/android/contacts/common/model/account/BaseAccountType$OrganizationKindBuilder;->throwIfList(Lcom/android/contacts/common/model/dataitem/DataKind;)V

    .line 1361
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
