.class Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1292
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1322
    const-string/jumbo v0, "aim"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1323
    :cond_0
    const-string/jumbo v0, "msn"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1324
    :cond_1
    const-string/jumbo v0, "yahoo"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1325
    :cond_2
    const-string/jumbo v0, "skype"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1326
    :cond_3
    const-string/jumbo v0, "qq"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1327
    :cond_4
    const-string/jumbo v0, "google_talk"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1328
    :cond_5
    const-string/jumbo v0, "icq"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1329
    :cond_6
    const-string/jumbo v0, "jabber"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1330
    :cond_7
    const-string/jumbo v0, "custom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1331
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildImType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    .line 1332
    const-string/jumbo v1, "data6"

    .line 1331
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1334
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1295
    const-string/jumbo v0, "im"

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
    .line 1308
    const-string/jumbo v5, "vnd.android.cursor.item/im"

    const-string/jumbo v6, "data5"

    .line 1310
    new-instance v10, Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;

    invoke-direct {v10}, Lcom/android/contacts/common/model/account/BaseAccountType$ImActionInflater;-><init>()V

    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v0, "data1"

    invoke-direct {v11, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    .line 1307
    const/4 v4, 0x0

    .line 1308
    const v7, 0x7f090081

    const/16 v8, 0x14

    .line 1309
    const v9, 0x7f0400dd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    .line 1307
    invoke-virtual/range {v0 .. v11}, Lcom/android/contacts/common/model/account/BaseAccountType$ImKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v12

    .line 1312
    .local v12, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data1"

    const v3, 0x7f090081

    const/16 v4, 0x21

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1314
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 1315
    iget-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1317
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
