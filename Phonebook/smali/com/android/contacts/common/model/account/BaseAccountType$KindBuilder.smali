.class abstract Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.super Ljava/lang/Object;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "KindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>()V

    return-void
.end method

.method private parseTypeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 990
    const-string/jumbo v2, "type"

    invoke-static {p2, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap2(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, "typeName":Ljava/lang/String;
    invoke-virtual {p0, p2, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    .line 993
    .local v0, "et":Lcom/android/contacts/common/model/account/AccountType$EditType;
    if-nez v0, :cond_0

    .line 994
    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    .line 995
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Undefined type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' for data kind \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 994
    invoke-direct {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 997
    :cond_0
    const-string/jumbo v2, "maxOccurs"

    const/4 v3, -0x1

    invoke-static {p2, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap1(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    .line 999
    return-object v0
.end method

.method private parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/common/model/dataitem/DataKind;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p5, "canHaveTypes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 943
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 946
    .local v3, "outerDepth":I
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    .line 949
    .local v0, "configuration":Lcom/sonyericsson/android/socialphonebook/Configuration;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 950
    .local v5, "type":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    .line 951
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_6

    .line 953
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 954
    .local v1, "depth":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    add-int/lit8 v6, v3, 0x1

    if-eq v1, v6, :cond_2

    .line 952
    :cond_1
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 958
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 959
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v6, "Type"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 960
    if-eqz p5, :cond_4

    .line 961
    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->parseTypeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    .line 965
    .local v2, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget-object v6, p4, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    const-string/jumbo v7, "data5"

    if-ne v6, v7, :cond_3

    .line 966
    invoke-virtual {v0, p4, v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isForbidden(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 967
    iget-object v6, p4, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 970
    :cond_3
    iget-object v6, p4, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 973
    .end local v2    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_4
    new-instance v6, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    .line 974
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Kind "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " can\'t have types"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 973
    invoke-direct {v6, v7}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 977
    :cond_5
    new-instance v6, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 942
    .end local v1    # "depth":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_6
    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1008
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method protected final newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "isPseudo"    # Z
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "typeColumn"    # Ljava/lang/String;
    .param p7, "titleRes"    # I
    .param p8, "weight"    # I
    .param p9, "editorLayoutResourceId"    # I
    .param p10, "actionHeader"    # Lcom/android/contacts/common/model/account/AccountType$StringInflater;
    .param p11, "actionBody"    # Lcom/android/contacts/common/model/account/AccountType$StringInflater;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    invoke-static {}, Lcom/android/contacts/common/model/account/BaseAccountType;->-get0()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    invoke-static {}, Lcom/android/contacts/common/model/account/BaseAccountType;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adding DataKind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v5, 0x1

    move-object v2, p5

    move v3, p7

    move/from16 v4, p8

    move/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    .line 905
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iput-object p6, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 906
    move-object/from16 v0, p10

    iput-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 907
    move-object/from16 v0, p11

    iput-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 908
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 912
    if-nez p4, :cond_2

    .line 913
    const-string/jumbo v2, "maxOccurs"

    const/4 v3, -0x1

    invoke-static {p3, v2, v3}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap1(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 918
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 920
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    .line 921
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/common/model/dataitem/DataKind;Z)V

    .line 922
    iget-object v2, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 923
    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    .line 924
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Kind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must have at least one type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 923
    invoke-direct {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 928
    :cond_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;->parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/common/model/dataitem/DataKind;Z)V

    .line 932
    :cond_2
    return-object v1
.end method

.method public abstract parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
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
.end method

.method protected final throwIfList(Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 1012
    iget v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1013
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must have \'overallMax=\"1\"\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1013
    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1011
    :cond_0
    return-void
.end method
