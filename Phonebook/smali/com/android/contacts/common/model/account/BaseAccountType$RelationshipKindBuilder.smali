.class Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelationshipKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1569
    const-string/jumbo v0, "assistant"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1570
    :cond_0
    const-string/jumbo v0, "brother"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1571
    :cond_1
    const-string/jumbo v0, "child"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1572
    :cond_2
    const-string/jumbo v0, "domestic_partner"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1573
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1575
    :cond_3
    const-string/jumbo v0, "father"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1576
    :cond_4
    const-string/jumbo v0, "friend"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1577
    :cond_5
    const-string/jumbo v0, "manager"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1578
    :cond_6
    const-string/jumbo v0, "mother"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1579
    :cond_7
    const-string/jumbo v0, "parent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1580
    :cond_8
    const-string/jumbo v0, "partner"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1581
    :cond_9
    const-string/jumbo v0, "referred_by"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1582
    :cond_a
    const-string/jumbo v0, "relative"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1583
    :cond_b
    const-string/jumbo v0, "sister"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1584
    :cond_c
    const-string/jumbo v0, "spouse"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1585
    :cond_d
    const-string/jumbo v0, "custom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1586
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    .line 1587
    const-string/jumbo v1, "data3"

    .line 1586
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1589
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1544
    const-string/jumbo v0, "relationship"

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
    .line 1552
    const-string/jumbo v5, "vnd.android.cursor.item/relation"

    const-string/jumbo v6, "data2"

    .line 1555
    new-instance v10, Lcom/android/contacts/common/model/account/BaseAccountType$RelationActionInflater;

    invoke-direct {v10}, Lcom/android/contacts/common/model/account/BaseAccountType$RelationActionInflater;-><init>()V

    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v0, "data1"

    invoke-direct {v11, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    .line 1551
    const/4 v4, 0x0

    .line 1553
    const v7, 0x7f090113

    const/16 v8, 0xa0

    .line 1554
    const v9, 0x7f0400dd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    .line 1551
    invoke-virtual/range {v0 .. v11}, Lcom/android/contacts/common/model/account/BaseAccountType$RelationshipKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v12

    .line 1557
    .local v12, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data1"

    const v3, 0x7f090113

    .line 1558
    const/16 v4, 0x2061

    .line 1557
    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 1561
    iget-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1563
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
