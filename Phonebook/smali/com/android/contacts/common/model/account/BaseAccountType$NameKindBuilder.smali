.class Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1022
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;-><init>()V

    return-void
.end method

.method private static checkAttributeTrue(ZLjava/lang/String;)V
    .locals 3
    .param p0, "value"    # Z
    .param p1, "attrName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 1030
    if-nez p0, :cond_0

    .line 1031
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_0
    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1025
    const-string/jumbo v0, "name"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 22
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
    .line 1043
    const-string/jumbo v1, "supportsDisplayName"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v15

    .line 1044
    .local v15, "supportsDisplayName":Z
    const-string/jumbo v1, "supportsPrefix"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v20

    .line 1045
    .local v20, "supportsPrefix":Z
    const-string/jumbo v1, "supportsMiddleName"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v16

    .line 1046
    .local v16, "supportsMiddleName":Z
    const-string/jumbo v1, "supportsSuffix"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v21

    .line 1048
    .local v21, "supportsSuffix":Z
    const-string/jumbo v1, "supportsPhoneticFamilyName"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v17

    .line 1050
    .local v17, "supportsPhoneticFamilyName":Z
    const-string/jumbo v1, "supportsPhoneticMiddleName"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v19

    .line 1052
    .local v19, "supportsPhoneticMiddleName":Z
    const-string/jumbo v1, "supportsPhoneticGivenName"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType;->-wrap0(Landroid/util/AttributeSet;Ljava/lang/String;Z)Z

    move-result v18

    .line 1055
    .local v18, "supportsPhoneticGivenName":Z
    const-string/jumbo v1, "supportsDisplayName"

    invoke-static {v15, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 1056
    const-string/jumbo v1, "supportsPrefix"

    move/from16 v0, v20

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 1057
    const-string/jumbo v1, "supportsMiddleName"

    move/from16 v0, v16

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 1058
    const-string/jumbo v1, "supportsSuffix"

    move/from16 v0, v21

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 1059
    const-string/jumbo v1, "supportsPhoneticFamilyName"

    move/from16 v0, v17

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 1060
    const-string/jumbo v1, "supportsPhoneticMiddleName"

    move/from16 v0, v19

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 1061
    const-string/jumbo v1, "supportsPhoneticGivenName"

    move/from16 v0, v18

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->checkAttributeTrue(ZLjava/lang/String;)V

    .line 1063
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 1067
    .local v13, "kinds":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/dataitem/DataKind;>;"
    const-string/jumbo v6, "vnd.android.cursor.item/name"

    .line 1069
    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const v1, 0x7f0900b3

    invoke-direct {v11, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    .line 1070
    new-instance v12, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v12, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    .line 1066
    const/4 v5, 0x0

    .line 1067
    const/4 v7, 0x0

    const v8, 0x7f0900b3

    const/4 v9, -0x1

    .line 1068
    const v10, 0x7f0400dc

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1066
    invoke-virtual/range {v1 .. v12}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v14

    .line 1072
    .local v14, "ks":Lcom/android/contacts/common/model/dataitem/DataKind;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/model/account/BaseAccountType$NameKindBuilder;->throwIfList(Lcom/android/contacts/common/model/dataitem/DataKind;)V

    .line 1073
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    iget-object v1, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data1"

    const v4, 0x7f09004b

    .line 1081
    const/16 v5, 0x2061

    .line 1080
    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    iget-object v1, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data4"

    const v4, 0x7f09010b

    .line 1083
    const/16 v5, 0x2061

    .line 1082
    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1083
    const/4 v3, 0x1

    .line 1082
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    iget-object v1, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data3"

    const v4, 0x7f09010a

    .line 1085
    const/16 v5, 0x2061

    .line 1084
    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1085
    const/4 v3, 0x1

    .line 1084
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    iget-object v1, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data5"

    const v4, 0x7f09010c

    .line 1087
    const/16 v5, 0x2061

    .line 1086
    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1087
    const/4 v3, 0x1

    .line 1086
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    iget-object v1, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data2"

    const v4, 0x7f090109

    .line 1089
    const/16 v5, 0x2061

    .line 1088
    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1089
    const/4 v3, 0x1

    .line 1088
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v1, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data6"

    const v4, 0x7f09010d

    .line 1091
    const/16 v5, 0x2061

    .line 1090
    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 1091
    const/4 v3, 0x1

    .line 1090
    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    iget-object v1, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data9"

    .line 1093
    const v4, 0x7f090110

    const/16 v5, 0xc1

    .line 1092
    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v1, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data8"

    .line 1095
    const v4, 0x7f09010f

    const/16 v5, 0xc1

    .line 1094
    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    iget-object v1, v14, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data7"

    .line 1097
    const v4, 0x7f09010e

    const/16 v5, 0xc1

    .line 1096
    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    return-object v13
.end method
