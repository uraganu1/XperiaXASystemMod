.class Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1490
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1520
    const-string/jumbo v1, "yearOptional"

    invoke-static {p1, v1, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v0

    .line 1522
    .local v0, "yo":Z
    const-string/jumbo v1, "birthday"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1523
    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    return-object v1

    .line 1525
    :cond_0
    const-string/jumbo v1, "anniversary"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    return-object v1

    .line 1526
    :cond_1
    const-string/jumbo v1, "other"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    return-object v1

    .line 1527
    :cond_2
    const-string/jumbo v1, "custom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1528
    invoke-static {v3, v0}, Lcom/android/contacts/common/model/account/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    .line 1529
    const-string/jumbo v2, "data3"

    .line 1528
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    return-object v1

    .line 1531
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1493
    const-string/jumbo v0, "event"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 14
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
    .line 1501
    const-string/jumbo v6, "vnd.android.cursor.item/contact_event"

    const-string/jumbo v7, "data2"

    .line 1503
    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;

    invoke-direct {v11}, Lcom/android/contacts/common/model/account/BaseAccountType$EventActionInflater;-><init>()V

    new-instance v12, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v12, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    .line 1500
    const/4 v5, 0x0

    .line 1501
    const v8, 0x7f0900b7

    const/16 v9, 0x96

    .line 1502
    const v10, 0x7f040074

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1500
    invoke-virtual/range {v1 .. v12}, Lcom/android/contacts/common/model/account/BaseAccountType$EventKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v13

    .line 1505
    .local v13, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v1, v13, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x7f0900b7

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1507
    const-string/jumbo v1, "dateWithTime"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1508
    invoke-static {}, Lcom/android/contacts/util/DateUtils;->getNoYearDateAndTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, v13, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 1509
    invoke-static {}, Lcom/android/contacts/util/DateUtils;->getDateAndTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, v13, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 1515
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 1511
    :cond_0
    invoke-static {}, Lcom/android/contacts/util/DateUtils;->getNoYearDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, v13, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 1512
    invoke-static {}, Lcom/android/contacts/util/DateUtils;->getFullDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, v13, Lcom/android/contacts/common/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    goto :goto_0
.end method
