.class Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebsiteKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1414
    const-string/jumbo v0, "website"

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
    .line 1422
    const-string/jumbo v5, "vnd.android.cursor.item/website"

    .line 1424
    new-instance v10, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v0, 0x7f0900b6

    invoke-direct {v10, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    .line 1425
    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v0, "data1"

    invoke-direct {v11, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    .line 1421
    const/4 v4, 0x0

    .line 1422
    const/4 v6, 0x0

    const v7, 0x7f0900b6

    const/16 v8, 0x78

    .line 1423
    const v9, 0x7f0400dd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    .line 1421
    invoke-virtual/range {v0 .. v11}, Lcom/android/contacts/common/model/account/BaseAccountType$WebsiteKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v12

    .line 1427
    .local v12, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data1"

    const v3, 0x7f0900b6

    .line 1428
    const/16 v4, 0x11

    .line 1427
    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    const v0, 0x7f020086

    iput v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 1431
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 1432
    iget-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1434
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
