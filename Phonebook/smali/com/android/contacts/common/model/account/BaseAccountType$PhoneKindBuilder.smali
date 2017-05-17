.class Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;
.super Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/common/model/account/BaseAccountType$KindBuilder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;-><init>()V

    return-void
.end method

.method protected static build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2
    .param p0, "type"    # I
    .param p1, "secondary"    # Z

    .prologue
    .line 1156
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-static {p0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1161
    const-string/jumbo v0, "home"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1162
    :cond_0
    const-string/jumbo v0, "mobile"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1163
    :cond_1
    const-string/jumbo v0, "work"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1164
    :cond_2
    const-string/jumbo v0, "fax_work"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1165
    :cond_3
    const-string/jumbo v0, "fax_home"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1166
    :cond_4
    const-string/jumbo v0, "pager"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1167
    :cond_5
    const-string/jumbo v0, "other"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-static {v0, v2}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1168
    :cond_6
    const-string/jumbo v0, "callback"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1169
    :cond_7
    const-string/jumbo v0, "car"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1170
    :cond_8
    const-string/jumbo v0, "company_main"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1171
    :cond_9
    const-string/jumbo v0, "isdn"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1172
    :cond_a
    const-string/jumbo v0, "main"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1173
    :cond_b
    const-string/jumbo v0, "other_fax"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1174
    :cond_c
    const-string/jumbo v0, "radio"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1175
    :cond_d
    const-string/jumbo v0, "telex"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1176
    :cond_e
    const-string/jumbo v0, "tty_tdd"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1177
    :cond_f
    const-string/jumbo v0, "work_mobile"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1178
    :cond_10
    const-string/jumbo v0, "work_pager"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x12

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1181
    :cond_11
    const-string/jumbo v0, "assistant"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1182
    :cond_12
    const-string/jumbo v0, "mms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x14

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1183
    :cond_13
    const-string/jumbo v0, "custom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1184
    invoke-static {v2, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->build(IZ)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    const-string/jumbo v1, "data3"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0

    .line 1186
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    const-string/jumbo v0, "phone"

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
    .line 1141
    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    const-string/jumbo v6, "data2"

    .line 1143
    new-instance v10, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;

    invoke-direct {v10}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionInflater;-><init>()V

    new-instance v11, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v0, "data1"

    invoke-direct {v11, v0}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    .line 1140
    const/4 v4, 0x0

    .line 1141
    const v7, 0x7f09007f

    const/16 v8, 0xa

    .line 1142
    const v9, 0x7f0400dd

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    .line 1140
    invoke-virtual/range {v0 .. v11}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneKindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IIILcom/android/contacts/common/model/account/AccountType$StringInflater;Lcom/android/contacts/common/model/account/AccountType$StringInflater;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v12

    .line 1145
    .local v12, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const v0, 0x7f020065

    iput v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 1146
    const v0, 0x7f09004c

    iput v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltDescriptionRes:I

    .line 1147
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/BaseAccountType$PhoneActionAltInflater;-><init>()V

    iput-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->actionAltHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 1149
    iget-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data1"

    const v3, 0x7f09007f

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/common/model/dataitem/DataKind;

    const/4 v1, 0x0

    aput-object v12, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
