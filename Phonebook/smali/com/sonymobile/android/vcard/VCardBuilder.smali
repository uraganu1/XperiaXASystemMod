.class public Lcom/sonymobile/android/vcard/VCardBuilder;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/vcard/VCardBuilder$PostalStruct;
    }
.end annotation


# static fields
.field public static final DEFAULT_EMAIL_TYPE:I = 0x3

.field public static final DEFAULT_PHONE_TYPE:I = 0x1

.field public static final DEFAULT_POSTAL_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field public static final VCARD_END_OF_LINE:Ljava/lang/String; = "\r\n"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PARAM_ENCODING_BASE64_AS_B:Ljava/lang/String; = "ENCODING=B"

.field private static final VCARD_PARAM_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_PARAM_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_PARAM_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_WS:Ljava/lang/String; = " "

.field private static final sAllowedAndroidPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPostalTypePriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppendTypeParamName:Z

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mCharset:Ljava/lang/String;

.field private mEndAppended:Z

.field private final mIsDoCoMo:Z

.field private final mIsV30OrV40:Z

.field private final mNeedsToConvertPhoneticString:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mRefrainsQPToNameProperties:Z

.field private final mShouldAppendCharsetParam:Z

.field private final mShouldConvertPhoneticStrings:Z

.field private final mShouldUseQuotedPrintable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mVCardCharsetParameter:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v3

    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    aput-object v2, v1, v4

    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    .line 1038
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    .line 1039
    sget-object v0, Lcom/sonymobile/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v0, Lcom/sonymobile/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v0, Lcom/sonymobile/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v0, Lcom/sonymobile/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 132
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    .line 142
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    .line 148
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    .line 149
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    .line 150
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldConvertPhoneticStrings:Z

    .line 151
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    .line 152
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    .line 153
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    .line 154
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    .line 155
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->appendTypeParamName(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    .line 156
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    .line 162
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    .line 165
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 180
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 187
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CHARSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    .line 191
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardBuilder;->clear()V

    .line 192
    return-void

    :cond_2
    const-string/jumbo v0, "vCard"

    const-string/jumbo v3, "Should not use vCard 4.0 when building vCard. It is not officially published yet."

    .line 143
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "UTF-8"

    .line 162
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "SHIFT_JIS"

    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    :goto_4
    const-string/jumbo v0, "CHARSET=SHIFT_JIS"

    .line 178
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_3

    .line 170
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 173
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string/jumbo v0, "SHIFT_JIS"

    .line 171
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "Use the charset \"UTF-8\" for export."

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "UTF-8"

    .line 184
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    const-string/jumbo v0, "CHARSET=UTF-8"

    .line 185
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_3
.end method

.method private appendNamePropertiesV40(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "vCard"

    const-string/jumbo v3, "Invalid flag is used in vCard 4.0 construction. Ignored."

    .line 282
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    if-nez p1, :cond_3

    :cond_1
    const-string/jumbo v2, "FN"

    const-string/jumbo v3, ""

    .line 286
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-object p0

    .line 277
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 285
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v8

    const-string/jumbo v2, "data3"

    .line 297
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "data5"

    .line 298
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "data2"

    .line 299
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "data4"

    .line 300
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "data6"

    .line 301
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "data1"

    .line 302
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_4
    :goto_1
    const-string/jumbo v9, "data9"

    .line 315
    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "data8"

    .line 317
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "data7"

    .line 319
    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "N"

    .line 321
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "N"

    .line 322
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "N"

    .line 323
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "N"

    .line 324
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "N"

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    const-string/jumbo v18, "N"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 332
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    const-string/jumbo v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "N"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v17, 0x3b

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v17, "N"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x3b

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "N"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 336
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v11, "SORT-AS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Lcom/sonymobile/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v3, "N"

    .line 365
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    .line 375
    return-object p0

    .line 303
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 308
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object v3, v2

    .line 312
    goto/16 :goto_1

    :cond_7
    const-string/jumbo v2, "FN"

    const-string/jumbo v3, ""

    .line 309
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-object p0

    .line 329
    :cond_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v2, "vCard"

    const-string/jumbo v9, "DISPLAY_NAME is empty."

    .line 357
    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v2

    invoke-static/range {v2 .. v7}, Lcom/sonymobile/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "N"

    .line 362
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FN"

    .line 363
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private appendPhoneticNameFields(Landroid/content/ContentValues;)V
    .locals 12

    .prologue
    const/16 v11, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "data9"

    .line 572
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "data8"

    .line 574
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "data7"

    .line 576
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-nez v3, :cond_3

    .line 589
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 606
    :cond_0
    iget v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 608
    iget v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 638
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "SOUND"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "X-IRMC-N"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-eqz v3, :cond_9

    :goto_1
    move v3, v5

    .line 654
    :goto_2
    if-nez v3, :cond_c

    const-string/jumbo v6, "SOUND"

    .line 662
    invoke-direct {p0, v6, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v6, "SOUND"

    .line 664
    invoke-direct {p0, v6, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, "SOUND"

    .line 666
    invoke-direct {p0, v6, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    const/4 v9, 0x3

    .line 670
    new-array v9, v9, [Ljava/lang/String;

    aput-object v2, v9, v5

    aput-object v1, v9, v4

    const/4 v10, 0x2

    aput-object v0, v9, v10

    invoke-direct {p0, v9}, Lcom/sonymobile/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 675
    :goto_4
    if-nez v3, :cond_e

    .line 679
    :goto_5
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldConvertPhoneticStrings:Z

    if-nez v3, :cond_f

    .line 707
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 710
    :goto_6
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 715
    :goto_7
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 722
    :goto_8
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    :cond_1
    :goto_9
    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-nez v3, :cond_18

    .line 801
    :cond_2
    :goto_a
    return-void

    .line 579
    :cond_3
    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 589
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 603
    :goto_b
    return-void

    .line 593
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SOUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "X-IRMC-N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 609
    :cond_6
    iget v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v3, v2, v1, v0}, Lcom/sonymobile/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 612
    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v7, "SORT-STRING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    iget v6, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v6}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 621
    :cond_7
    :goto_c
    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v7, "SOUND"

    invoke-direct {p0, v7, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 613
    :cond_8
    new-array v6, v4, [Ljava/lang/String;

    aput-object v3, v6, v5

    invoke-direct {p0, v6}, Lcom/sonymobile/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 618
    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 642
    :cond_9
    new-array v3, v4, [Ljava/lang/String;

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    move v3, v4

    goto/16 :goto_2

    :cond_b
    new-array v3, v4, [Ljava/lang/String;

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v6, "SOUND"

    .line 655
    invoke-direct {p0, v6, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v6, "SOUND"

    .line 657
    invoke-direct {p0, v6, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, "SOUND"

    .line 659
    invoke-direct {p0, v6, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 672
    :cond_d
    iget-object v9, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    iget-object v9, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 676
    :cond_e
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, ";"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 684
    :cond_f
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v4

    .line 688
    :goto_d
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 696
    :goto_e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 703
    :goto_f
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 685
    :cond_10
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    .line 686
    goto :goto_d

    .line 689
    :cond_11
    if-nez v3, :cond_12

    .line 692
    iget-object v8, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    :goto_10
    iget-object v8, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_12
    move v3, v5

    .line 690
    goto :goto_10

    .line 697
    :cond_13
    if-eqz v3, :cond_14

    .line 700
    :goto_11
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 698
    :cond_14
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 708
    :cond_15
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 713
    :cond_16
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 718
    :cond_17
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 728
    :cond_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 752
    :goto_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 776
    :goto_13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 777
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v0, :cond_26

    :cond_19
    move v0, v5

    .line 781
    :goto_14
    if-nez v0, :cond_27

    const-string/jumbo v1, "X-PHONETIC-LAST-NAME"

    .line 784
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 787
    :goto_15
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    new-array v3, v4, [Ljava/lang/String;

    aput-object v2, v3, v5

    invoke-direct {p0, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 792
    :goto_16
    if-nez v0, :cond_29

    .line 796
    :goto_17
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 729
    :cond_1a
    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v3, :cond_1c

    :cond_1b
    move v3, v5

    .line 733
    :goto_18
    if-nez v3, :cond_1d

    const-string/jumbo v6, "X-PHONETIC-FIRST-NAME"

    .line 736
    invoke-direct {p0, v6, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 739
    :goto_19
    iget-object v7, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v8, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    new-array v7, v4, [Ljava/lang/String;

    aput-object v0, v7, v5

    invoke-direct {p0, v7}, Lcom/sonymobile/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 744
    :goto_1a
    if-nez v3, :cond_1f

    .line 748
    :goto_1b
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 729
    :cond_1c
    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    move v3, v4

    goto :goto_18

    .line 734
    :cond_1d
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    .line 741
    :cond_1e
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 745
    :cond_1f
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 753
    :cond_20
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v0, :cond_22

    :cond_21
    move v0, v5

    .line 757
    :goto_1c
    if-nez v0, :cond_23

    const-string/jumbo v3, "X-PHONETIC-MIDDLE-NAME"

    .line 760
    invoke-direct {p0, v3, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 763
    :goto_1d
    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v7, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    new-array v6, v4, [Ljava/lang/String;

    aput-object v1, v6, v5

    invoke-direct {p0, v6}, Lcom/sonymobile/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 768
    :goto_1e
    if-nez v0, :cond_25

    .line 772
    :goto_1f
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    .line 753
    :cond_22
    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v4

    goto :goto_1c

    .line 758
    :cond_23
    invoke-direct {p0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 765
    :cond_24
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 769
    :cond_25
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 777
    :cond_26
    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v4

    goto/16 :goto_14

    .line 782
    :cond_27
    invoke-direct {p0, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_15

    .line 789
    :cond_28
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    .line 793
    :cond_29
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17
.end method

.method private appendPostalsForDoCoMo(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1053
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v0

    move v3, v5

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v3

    move-object v3, v2

    .line 1071
    :goto_1
    if-eqz v3, :cond_5

    const-string/jumbo v0, "data3"

    .line 1076
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1077
    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    .line 1078
    return-void

    .line 1053
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1054
    if-eqz v0, :cond_0

    const-string/jumbo v1, "data2"

    .line 1057
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1058
    sget-object v1, Lcom/sonymobile/android/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1059
    if-nez v1, :cond_2

    move v1, v5

    .line 1061
    :goto_2
    if-lt v1, v6, :cond_3

    move-object v0, v2

    move v1, v3

    move v2, v6

    :goto_3
    move v3, v1

    move v6, v2

    move-object v2, v0

    .line 1069
    goto :goto_0

    .line 1059
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    .line 1063
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1065
    if-eqz v1, :cond_4

    move v2, v1

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v3

    move-object v3, v0

    .line 1066
    goto :goto_1

    :cond_5
    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "Should not come here. Must have at least one postal data."

    .line 1072
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return-void
.end method

.method private appendPostalsForGeneric(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1081
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1095
    return-void

    .line 1081
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1082
    if-eqz v3, :cond_0

    const-string/jumbo v0, "data2"

    .line 1085
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1086
    if-nez v0, :cond_3

    move v1, v6

    :goto_1
    const-string/jumbo v0, "data3"

    .line 1088
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "is_primary"

    .line 1089
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1091
    if-nez v0, :cond_4

    :cond_2
    move v4, v5

    :goto_2
    move-object v0, p0

    .line 1093
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_0

    .line 1086
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 1091
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    move v4, v6

    goto :goto_2
.end method

.method private appendTypeParameter(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2081
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2088
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "TYPE"

    .line 2090
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    return-void

    .line 2088
    :cond_1
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mAppendTypeParamName:Z

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private appendTypeParameters(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2046
    const/4 v0, 0x1

    .line 2047
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2074
    return-void

    .line 2047
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2048
    iget v4, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2049
    :cond_2
    iget v4, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2052
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2056
    if-nez v1, :cond_5

    .line 2059
    iget-object v4, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    :goto_2
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    move v0, v1

    :goto_3
    move v1, v0

    .line 2073
    goto :goto_0

    .line 2048
    :cond_3
    iget v4, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2063
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->isV21Word(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2066
    if-nez v1, :cond_6

    .line 2069
    iget-object v4, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    :goto_4
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    move v0, v1

    goto :goto_3

    .line 2049
    :cond_4
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v1, v2

    .line 2057
    goto :goto_2

    :cond_6
    move v1, v2

    .line 2067
    goto :goto_4
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 1755
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_0

    .line 1760
    invoke-static {p2}, Lcom/sonymobile/android/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1761
    if-nez v0, :cond_1

    const-string/jumbo v0, "vCard"

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "VOICE"

    .line 1758
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1762
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 541
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 544
    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 547
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-direct {p0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 556
    :goto_2
    if-nez v0, :cond_4

    .line 560
    :goto_3
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    return-void

    .line 541
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 544
    :cond_2
    invoke-direct {p0, p2}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 553
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 557
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "data3"

    .line 211
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "data5"

    .line 212
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "data2"

    .line 213
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "data4"

    .line 214
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "data6"

    .line 215
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "data9"

    .line 216
    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "data8"

    .line 218
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "data7"

    .line 220
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "data1"

    .line 222
    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 223
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2125
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardUtils;->replaceLFWithCRLF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2133
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move v1, v2

    move v3, v2

    .line 2139
    :cond_0
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_2

    .line 2157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    .line 2122
    return-object v0

    .line 2138
    :catch_0
    move-exception v1

    const-string/jumbo v1, "vCard"

    .line 2135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Charset "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " cannot be used. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "Try default charset"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move v1, v2

    move v3, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "=%02X"

    const/4 v6, 0x1

    .line 2140
    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v0, v3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2141
    add-int/lit8 v3, v3, 0x1

    .line 2142
    add-int/lit8 v1, v1, 0x3

    const/16 v5, 0x43

    .line 2144
    if-lt v1, v5, :cond_0

    const-string/jumbo v1, "=\r\n"

    .line 2152
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 2153
    goto :goto_0
.end method

.method private encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x5c

    const/4 v1, 0x0

    .line 2171
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2174
    invoke-direct {p0, p1}, Lcom/sonymobile/android/vcard/VCardBuilder;->shouldEscapeProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2178
    invoke-static {p2}, Lcom/sonymobile/android/vcard/VCardUtils;->replaceLFWithCRLF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 2182
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 2193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2197
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    .line 2172
    return-object v0

    .line 2175
    :cond_1
    invoke-direct {p0, p2}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2183
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-char v5, v5

    const/16 v6, 0x3b

    .line 2184
    if-ne v5, v6, :cond_4

    .line 2185
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2188
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2182
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2184
    :cond_4
    if-eq v5, v7, :cond_3

    .line 2190
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2194
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x5c

    const/4 v1, 0x0

    .line 2208
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2211
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 2213
    :goto_0
    invoke-static {p2}, Lcom/sonymobile/android/vcard/VCardUtils;->replaceLFWithCRLF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2216
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 2217
    :goto_1
    if-lt v1, v4, :cond_4

    .line 2269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    .line 2209
    return-object v0

    .line 2211
    :cond_2
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sonymobile/android/vcard/VCardBuilder;->shouldEscapeProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2218
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-char v5, v5

    .line 2219
    sparse-switch v5, :sswitch_data_0

    .line 2264
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2217
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2221
    :sswitch_0
    if-nez v0, :cond_5

    .line 2224
    :goto_4
    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2222
    :cond_5
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_1
    const-string/jumbo v5, "\\r"

    .line 2228
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :sswitch_2
    const-string/jumbo v5, "\\n"

    .line 2234
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2238
    :sswitch_3
    if-nez v0, :cond_6

    .line 2247
    :sswitch_4
    iget-boolean v6, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v6, :cond_7

    .line 2251
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string/jumbo v5, "\\\\"

    .line 2239
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2248
    :cond_7
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2249
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2256
    :sswitch_5
    iget-boolean v6, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-nez v6, :cond_8

    .line 2259
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string/jumbo v5, "\\,"

    .line 2257
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2219
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    .line 259
    :cond_1
    if-eqz v0, :cond_a

    move-object v1, v0

    .line 269
    :cond_2
    :goto_1
    return-object v1

    .line 234
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 235
    if-eqz v0, :cond_0

    const-string/jumbo v4, "is_super_primary"

    .line 238
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 239
    if-nez v4, :cond_4

    .line 243
    :goto_2
    if-eqz v2, :cond_5

    move-object v0, v1

    move-object v1, v2

    :goto_3
    move-object v2, v1

    move-object v1, v0

    .line 257
    goto :goto_0

    .line 239
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "is_primary"

    .line 246
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 247
    if-nez v4, :cond_8

    .line 252
    :cond_6
    if-eqz v1, :cond_9

    :cond_7
    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    .line 247
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_6

    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 249
    goto :goto_3

    .line 252
    :cond_9
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v1, v2

    .line 254
    goto :goto_3

    .line 260
    :cond_a
    if-nez v1, :cond_2

    .line 265
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    goto :goto_1
.end method

.method private varargs shouldAppendCharsetParam([Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2109
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-eqz v0, :cond_0

    .line 2112
    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 2117
    return v1

    .line 2110
    :cond_0
    return v1

    .line 2112
    :cond_1
    aget-object v3, p1, v0

    .line 2113
    new-array v4, v5, [Ljava/lang/String;

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2114
    :cond_2
    return v5
.end method

.method private shouldEscapeProperty(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "N"

    .line 2273
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "SOUND"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ORG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ADR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NICKNAME"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 962
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 965
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v6, v0

    move-object v0, v1

    move v1, v6

    .line 966
    :goto_0
    if-lt v1, v3, :cond_0

    .line 975
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 978
    :goto_1
    return-object v2

    .line 967
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    const/16 v5, 0xa

    .line 968
    if-eq v4, v5, :cond_2

    .line 972
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 966
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 969
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 976
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/sonymobile/android/vcard/VCardBuilder$PostalStruct;
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "data5"

    .line 1116
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "data6"

    .line 1117
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "data4"

    .line 1118
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "data7"

    .line 1119
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "data8"

    .line 1120
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "data9"

    .line 1121
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v0, "data10"

    .line 1122
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x7

    .line 1123
    new-array v6, v0, [Ljava/lang/String;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const/4 v0, 0x3

    aput-object v9, v6, v0

    const/4 v0, 0x4

    aput-object v10, v6, v0

    const/4 v0, 0x5

    aput-object v11, v6, v0

    const/4 v0, 0x6

    aput-object v12, v6, v0

    .line 1126
    invoke-static {v6}, Lcom/sonymobile/android/vcard/VCardUtils;->areAllEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "data1"

    .line 1183
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1185
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1188
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v0, :cond_7

    :cond_0
    move v0, v2

    .line 1191
    :goto_0
    new-array v4, v1, [Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1194
    :goto_1
    if-nez v0, :cond_9

    const-string/jumbo v1, "ADR"

    .line 1197
    invoke-direct {p0, v1, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1204
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ";"

    .line 1205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    .line 1207
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    .line 1208
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    .line 1209
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    .line 1210
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    .line 1211
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    new-instance v1, Lcom/sonymobile/android/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sonymobile/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    return-object v1

    .line 1127
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    .line 1130
    :goto_3
    invoke-static {v6}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1140
    :goto_4
    if-nez v0, :cond_5

    const-string/jumbo v1, "ADR"

    .line 1156
    invoke-direct {p0, v1, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "ADR"

    .line 1157
    invoke-direct {p0, v1, v4}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "ADR"

    .line 1159
    invoke-direct {p0, v1, v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "ADR"

    .line 1160
    invoke-direct {p0, v1, v9}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "ADR"

    .line 1161
    invoke-direct {p0, v1, v10}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "ADR"

    .line 1162
    invoke-direct {p0, v1, v11}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "ADR"

    .line 1163
    invoke-direct {p0, v1, v12}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1165
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ";"

    .line 1167
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, ";"

    .line 1169
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    .line 1171
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ";"

    .line 1173
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";"

    .line 1175
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ";"

    .line 1177
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    new-instance v1, Lcom/sonymobile/android/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sonymobile/android/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    return-object v1

    .line 1127
    :cond_3
    invoke-static {v6}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto/16 :goto_3

    :cond_4
    move v2, v1

    .line 1130
    goto/16 :goto_4

    :cond_5
    const-string/jumbo v1, "ADR"

    .line 1141
    invoke-direct {p0, v1, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "ADR"

    .line 1143
    invoke-direct {p0, v1, v4}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "ADR"

    .line 1145
    invoke-direct {p0, v1, v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "ADR"

    .line 1147
    invoke-direct {p0, v1, v9}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "ADR"

    .line 1149
    invoke-direct {p0, v1, v10}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "ADR"

    .line 1151
    invoke-direct {p0, v1, v11}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "ADR"

    .line 1153
    invoke-direct {p0, v1, v12}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_6
    const/4 v0, 0x0

    .line 1186
    return-object v0

    .line 1188
    :cond_7
    new-array v0, v1, [Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_8
    move v2, v1

    .line 1191
    goto/16 :goto_1

    .line 1195
    :cond_9
    invoke-direct {p0, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method


# virtual methods
.method public appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1864
    sget-object v0, Lcom/sonymobile/android/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1867
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_0
    const/16 v0, 0xf

    .line 1868
    if-le v3, v0, :cond_3

    .line 1876
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-nez v0, :cond_5

    :cond_0
    move v0, v2

    .line 1879
    :goto_1
    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v3, :cond_6

    :goto_2
    move v1, v2

    .line 1882
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "X-ANDROID-CUSTOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    if-nez v0, :cond_7

    .line 1887
    :goto_3
    if-nez v1, :cond_8

    .line 1891
    :goto_4
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1907
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    return-void

    .line 1865
    :cond_2
    return-void

    .line 1869
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "data"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1870
    if-eqz v0, :cond_4

    .line 1873
    :goto_6
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1868
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_6

    .line 1876
    :cond_5
    invoke-static {v4}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_1

    .line 1879
    :cond_6
    invoke-static {v4}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 1884
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1888
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1893
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1895
    if-nez v1, :cond_a

    const-string/jumbo v3, "X-ANDROID-CUSTOM"

    .line 1902
    invoke-direct {p0, v3, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1904
    :goto_7
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1896
    :cond_a
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1564
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "vCard"

    .line 1593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown Email type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1600
    if-nez p4, :cond_2

    .line 1603
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    const-string/jumbo v0, "EMAIL"

    .line 1607
    invoke-virtual {p0, v0, v1, p3}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1609
    return-void

    .line 1566
    :pswitch_1
    invoke-static {p2}, Lcom/sonymobile/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1568
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "CELL"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "HOME"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "WORK"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "CELL"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "PREF"

    .line 1601
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1604
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public appendEmails(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 983
    if-nez p1, :cond_2

    move v1, v2

    .line 1008
    :cond_0
    if-eqz v1, :cond_9

    .line 1012
    :cond_1
    :goto_0
    return-object p0

    .line 984
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 985
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v4, "data1"

    .line 986
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 987
    if-nez v4, :cond_5

    .line 990
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v1, "data2"

    .line 993
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 994
    if-nez v1, :cond_6

    const/4 v1, 0x3

    :goto_3
    const-string/jumbo v7, "data3"

    .line 996
    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "is_primary"

    .line 997
    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 998
    if-nez v0, :cond_7

    :cond_4
    move v0, v2

    .line 1001
    :goto_4
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :goto_5
    move v1, v3

    .line 1005
    goto :goto_1

    .line 988
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 994
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    .line 998
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v3

    goto :goto_4

    .line 1002
    :cond_8
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1003
    invoke-virtual {p0, v1, v7, v4, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 1008
    :cond_9
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    .line 1009
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public appendEvents(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1413
    if-nez p1, :cond_1

    .line 1465
    :cond_0
    :goto_0
    return-object p0

    .line 1416
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v0

    move-object v2, v0

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1457
    :goto_2
    if-nez v2, :cond_e

    .line 1460
    if-eqz v1, :cond_0

    const-string/jumbo v0, "BDAY"

    .line 1461
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1416
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1417
    if-eqz v0, :cond_2

    const-string/jumbo v3, "data2"

    .line 1420
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1422
    if-nez v3, :cond_5

    const/4 v3, 0x2

    :goto_3
    const/4 v6, 0x3

    .line 1427
    if-eq v3, v6, :cond_6

    .line 1452
    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-nez v3, :cond_d

    :cond_4
    :goto_4
    move-object v0, v1

    move-object v1, v2

    :goto_5
    move-object v2, v1

    move-object v1, v0

    .line 1456
    goto :goto_1

    .line 1423
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_6
    const-string/jumbo v3, "data1"

    .line 1428
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1429
    if-eqz v6, :cond_2

    const-string/jumbo v3, "is_super_primary"

    .line 1432
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1434
    if-nez v3, :cond_9

    :cond_7
    move v3, v4

    .line 1436
    :goto_6
    if-nez v3, :cond_a

    const-string/jumbo v3, "is_primary"

    .line 1441
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1443
    if-nez v0, :cond_b

    :cond_8
    move v0, v4

    .line 1445
    :goto_7
    if-nez v0, :cond_c

    .line 1448
    if-nez v1, :cond_4

    move-object v1, v6

    .line 1450
    goto :goto_4

    .line 1434
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_7

    move v3, v5

    goto :goto_6

    :cond_a
    move-object v2, v6

    .line 1439
    goto :goto_2

    .line 1443
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    move v0, v5

    goto :goto_7

    :cond_c
    move-object v2, v6

    .line 1447
    goto :goto_4

    :cond_d
    const-string/jumbo v3, "vnd.android.cursor.item/contact_event"

    .line 1454
    invoke-virtual {p0, v3, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_5

    :cond_e
    const-string/jumbo v0, "BDAY"

    .line 1458
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public appendIms(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1218
    if-nez p1, :cond_1

    .line 1274
    :cond_0
    return-object p0

    .line 1219
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v1, "data5"

    .line 1220
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1221
    if-eqz v1, :cond_2

    .line 1224
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardUtils;->getPropertyNameForIm(I)Ljava/lang/String;

    move-result-object v6

    .line 1225
    if-eqz v6, :cond_2

    const-string/jumbo v1, "data1"

    .line 1228
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1229
    if-nez v1, :cond_4

    .line 1232
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "data2"

    .line 1237
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1238
    if-nez v2, :cond_5

    const/4 v2, 0x3

    :goto_2
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object v2, v3

    .line 1260
    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_4
    const-string/jumbo v2, "is_primary"

    .line 1264
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1265
    if-nez v0, :cond_8

    :cond_3
    move v0, v4

    .line 1267
    :goto_5
    if-nez v0, :cond_9

    .line 1271
    :goto_6
    invoke-virtual {p0, v6, v7, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1230
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1238
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :pswitch_1
    const-string/jumbo v2, "HOME"

    goto :goto_3

    :pswitch_2
    const-string/jumbo v2, "WORK"

    goto :goto_3

    :pswitch_3
    const-string/jumbo v2, "data3"

    .line 1248
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1249
    if-nez v2, :cond_6

    move-object v2, v3

    goto :goto_3

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "X-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1262
    :cond_7
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1265
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const-string/jumbo v0, "PREF"

    .line 1268
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1947
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1948
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1957
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1958
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1951
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 1952
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    .line 1962
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1963
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    if-nez p2, :cond_1

    .line 1973
    :cond_0
    :goto_0
    if-nez p4, :cond_2

    .line 1979
    :goto_1
    if-nez p5, :cond_3

    .line 1986
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    :goto_2
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1991
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    return-void

    .line 1969
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1970
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1971
    invoke-direct {p0, p2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    goto :goto_0

    .line 1974
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1980
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1981
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1982
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2002
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    if-nez p2, :cond_1

    .line 2007
    :cond_0
    :goto_0
    if-nez p4, :cond_2

    .line 2011
    :goto_1
    if-nez p5, :cond_3

    .line 2016
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    const/4 v0, 0x1

    .line 2018
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2037
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    return-void

    .line 2003
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    invoke-direct {p0, p2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    goto :goto_0

    .line 2008
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2012
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2018
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2020
    if-nez p5, :cond_5

    .line 2027
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 2030
    :goto_4
    if-nez v1, :cond_6

    .line 2033
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 2035
    :goto_5
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 2036
    goto :goto_3

    .line 2021
    :cond_5
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    :cond_6
    move v0, v2

    .line 2031
    goto :goto_5
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1996
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1997
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1912
    invoke-virtual {p0, p1, v0, p2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1913
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1917
    invoke-virtual {p0, p1, v0, p2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1918
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1922
    new-array v2, v1, [Ljava/lang/String;

    aput-object p3, v2, v0

    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v0

    .line 1924
    :goto_0
    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v2, :cond_2

    :cond_0
    move v5, v0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1927
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1929
    return-void

    :cond_1
    move v4, v1

    .line 1922
    goto :goto_0

    .line 1924
    :cond_2
    new-array v2, v1, [Ljava/lang/String;

    aput-object p3, v2, v0

    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v5, v1

    goto :goto_1
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1933
    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-nez v2, :cond_2

    :cond_0
    move v4, v1

    .line 1936
    :goto_0
    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v2, :cond_3

    :cond_1
    move v5, v1

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1939
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1941
    return-void

    .line 1933
    :cond_2
    invoke-static {p3}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    move v4, v0

    goto :goto_0

    .line 1936
    :cond_3
    invoke-static {p3}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    move v5, v0

    goto :goto_1
.end method

.method public appendNameProperties(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 384
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    if-nez p1, :cond_2

    .line 389
    :cond_0
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 395
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_8

    .line 398
    :goto_0
    return-object p0

    .line 385
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendNamePropertiesV40(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;

    move-result-object v0

    return-object v0

    .line 388
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-direct {p0, p1}, Lcom/sonymobile/android/vcard/VCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v10

    const-string/jumbo v0, "data3"

    .line 403
    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "data5"

    .line 404
    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "data2"

    .line 405
    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "data4"

    .line 406
    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "data6"

    .line 407
    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "data1"

    .line 408
    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_3
    const/4 v6, 0x5

    .line 411
    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v8

    aput-object v3, v6, v7

    const/4 v9, 0x2

    aput-object v2, v6, v9

    const/4 v9, 0x3

    aput-object v4, v6, v9

    const/4 v9, 0x4

    aput-object v5, v6, v9

    invoke-direct {p0, v6}, Lcom/sonymobile/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v11

    .line 413
    iget-boolean v6, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-eqz v6, :cond_a

    :goto_1
    move v6, v8

    .line 422
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 425
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v0

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_4
    new-array v9, v7, [Ljava/lang/String;

    aput-object v0, v9, v8

    invoke-direct {p0, v9}, Lcom/sonymobile/android/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    .line 431
    iget-boolean v9, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-eqz v9, :cond_d

    :goto_3
    move v7, v8

    .line 440
    :cond_5
    if-nez v6, :cond_e

    const-string/jumbo v8, "N"

    .line 452
    invoke-direct {p0, v8, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "N"

    .line 453
    invoke-direct {p0, v1, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "N"

    .line 454
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "N"

    .line 455
    invoke-direct {p0, v1, v4}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "N"

    .line 456
    invoke-direct {p0, v1, v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v3

    move-object v5, v8

    move-object v3, v2

    move-object v8, v9

    move-object v2, v1

    .line 459
    :goto_4
    if-nez v7, :cond_f

    const-string/jumbo v1, "FN"

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    :goto_5
    iget-object v9, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v13, "N"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-boolean v9, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v9, :cond_10

    .line 481
    if-nez v11, :cond_13

    .line 485
    :goto_6
    if-nez v6, :cond_14

    .line 489
    :goto_7
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    :goto_8
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    if-nez v12, :cond_15

    .line 508
    :goto_9
    if-nez v7, :cond_16

    .line 512
    :goto_a
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_6
    :goto_b
    invoke-direct {p0, v10}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    .line 537
    return-object p0

    :cond_7
    const-string/jumbo v0, "N"

    const-string/jumbo v1, ""

    .line 393
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FN"

    const-string/jumbo v1, ""

    .line 394
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "N"

    const-string/jumbo v1, ""

    .line 396
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 515
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 529
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 532
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "N"

    const-string/jumbo v1, ""

    .line 533
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 413
    :cond_a
    new-array v6, v7, [Ljava/lang/String;

    aput-object v1, v6, v8

    invoke-static {v6}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    move v6, v7

    goto/16 :goto_2

    :cond_c
    new-array v6, v7, [Ljava/lang/String;

    aput-object v3, v6, v8

    invoke-static {v6}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-array v6, v7, [Ljava/lang/String;

    aput-object v2, v6, v8

    invoke-static {v6}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-array v6, v7, [Ljava/lang/String;

    aput-object v4, v6, v8

    invoke-static {v6}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-array v6, v7, [Ljava/lang/String;

    aput-object v5, v6, v8

    invoke-static {v6}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto/16 :goto_1

    .line 431
    :cond_d
    new-array v9, v7, [Ljava/lang/String;

    aput-object v0, v9, v8

    invoke-static {v9}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v8, "N"

    .line 441
    invoke-direct {p0, v8, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "N"

    .line 443
    invoke-direct {p0, v1, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "N"

    .line 445
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "N"

    .line 447
    invoke-direct {p0, v1, v4}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "N"

    .line 449
    invoke-direct {p0, v1, v5}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintableAndEscapeSpecialChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v3

    move-object v5, v8

    move-object v3, v2

    move-object v8, v9

    move-object v2, v1

    goto/16 :goto_4

    .line 459
    :cond_f
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 465
    :cond_10
    if-nez v11, :cond_11

    .line 469
    :goto_c
    if-nez v6, :cond_12

    .line 473
    :goto_d
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 466
    :cond_11
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 470
    :cond_12
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 482
    :cond_13
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v9, ";"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 486
    :cond_14
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 505
    :cond_15
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 509
    :cond_16
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_17
    const-string/jumbo v1, "N"

    .line 518
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FN"

    .line 526
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_18
    const-string/jumbo v0, "N"

    const-string/jumbo v1, ""

    .line 530
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FN"

    const-string/jumbo v1, ""

    .line 531
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public appendNickNames(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 805
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-nez v1, :cond_0

    .line 807
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-nez v0, :cond_2

    .line 811
    return-object p0

    :cond_0
    move v1, v0

    .line 813
    :goto_0
    if-nez p1, :cond_3

    .line 833
    :cond_1
    return-object p0

    .line 808
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 814
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v3, "data1"

    .line 815
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 817
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "NICKNAME"

    .line 821
    invoke-direct {p0, v4, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 824
    if-nez v1, :cond_5

    const-string/jumbo v0, "NICKNAME"

    .line 828
    invoke-virtual {p0, v0, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "data1"

    .line 825
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "vnd.android.cursor.item/nickname"

    .line 826
    invoke-virtual {p0, v3, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1
.end method

.method public appendNotes(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1364
    if-nez p1, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return-object p0

    .line 1365
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    if-nez v0, :cond_4

    .line 1393
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    .line 1394
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1395
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1396
    new-array v0, v2, [Ljava/lang/String;

    aput-object v5, v0, v3

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    .line 1398
    :goto_2
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v1, :cond_d

    :cond_3
    move v1, v3

    :goto_3
    const-string/jumbo v6, "NOTE"

    .line 1401
    invoke-virtual {p0, v6, v5, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 1366
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1368
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1382
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1385
    new-array v0, v2, [Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 1387
    :goto_5
    iget-boolean v4, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v4, :cond_b

    :goto_6
    move v2, v3

    :cond_5
    const-string/jumbo v3, "NOTE"

    .line 1390
    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1368
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v6, "data1"

    .line 1369
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1370
    if-eqz v0, :cond_7

    .line 1373
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_8

    move v0, v1

    :goto_8
    move v1, v0

    .line 1381
    goto :goto_4

    :cond_7
    const-string/jumbo v0, ""

    goto :goto_7

    .line 1374
    :cond_8
    if-nez v1, :cond_9

    const-string/jumbo v6, "\r\n"

    .line 1377
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_8

    :cond_9
    move v1, v3

    .line 1375
    goto :goto_9

    :cond_a
    move v0, v2

    .line 1385
    goto :goto_5

    .line 1387
    :cond_b
    new-array v4, v2, [Ljava/lang/String;

    aput-object v1, v4, v3

    invoke-static {v4}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_6

    :cond_c
    move v0, v2

    .line 1396
    goto :goto_2

    .line 1398
    :cond_d
    new-array v1, v2, [Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3
.end method

.method public appendOrganizations(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1296
    if-nez p1, :cond_1

    .line 1335
    :cond_0
    return-object p0

    .line 1297
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    .line 1298
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1299
    if-nez v1, :cond_5

    :goto_1
    const-string/jumbo v2, "data5"

    .line 1302
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1303
    if-nez v2, :cond_6

    :goto_2
    const-string/jumbo v6, "data4"

    .line 1306
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1307
    if-nez v0, :cond_7

    .line 1311
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1312
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1315
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1321
    :goto_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ORG"

    .line 1322
    new-array v1, v4, [Ljava/lang/String;

    aput-object v6, v1, v3

    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v3

    :goto_6
    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v2, :cond_c

    :cond_3
    move v2, v3

    :goto_7
    invoke-virtual {p0, v7, v6, v1, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v6, "TITLE"

    .line 1328
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v3

    :goto_8
    iget-boolean v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-nez v2, :cond_e

    :cond_4
    move v2, v3

    :goto_9
    invoke-virtual {p0, v6, v0, v1, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1300
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1304
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1308
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1313
    :cond_8
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1316
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_a

    .line 1319
    :goto_a
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1317
    :cond_a
    const/16 v1, 0x3b

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_b
    move v1, v4

    .line 1322
    goto :goto_6

    :cond_c
    new-array v2, v4, [Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_7

    :cond_d
    move v1, v4

    .line 1328
    goto :goto_8

    :cond_e
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    goto :goto_9
.end method

.method public appendPhones(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/sonymobile/android/vcard/VCardPhoneNumberTranslationCallback;",
            ")",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 838
    const/4 v0, 0x0

    .line 839
    if-nez p1, :cond_1

    .line 929
    :goto_0
    if-eqz v0, :cond_17

    .line 933
    :cond_0
    :goto_1
    return-object p0

    .line 840
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 841
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v2, "data2"

    .line 842
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v2, "data3"

    .line 843
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "is_primary"

    .line 844
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 845
    if-nez v2, :cond_6

    :cond_4
    const/4 v2, 0x0

    :goto_3
    const-string/jumbo v4, "data1"

    .line 847
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    if-nez v0, :cond_7

    .line 851
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 855
    if-nez v3, :cond_8

    const/4 v3, 0x1

    .line 859
    :goto_5
    if-nez p2, :cond_9

    const/4 v4, 0x6

    .line 866
    if-ne v3, v4, :cond_b

    .line 869
    :cond_5
    const/4 v1, 0x1

    .line 870
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v1

    :goto_6
    move v1, v0

    .line 926
    goto :goto_2

    .line 845
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    .line 849
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 855
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    .line 860
    :cond_9
    invoke-interface {p2, v0, v3, v7, v2}, Lcom/sonymobile/android/vcard/VCardPhoneNumberTranslationCallback;->onValueReceived(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 862
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    goto :goto_6

    .line 863
    :cond_a
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 864
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v7, v0, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_6

    .line 866
    :cond_b
    iget v4, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/sonymobile/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 875
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 876
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 879
    const/4 v4, 0x1

    .line 880
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v4

    goto :goto_6

    .line 871
    :cond_d
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 872
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v7, v0, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_6

    .line 880
    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 881
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 885
    const/16 v1, 0x2c

    const/16 v9, 0x70

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x3b

    const/16 v10, 0x77

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 891
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 912
    :goto_8
    iget v9, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v9}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v9

    if-nez v9, :cond_16

    .line 919
    :cond_f
    :goto_9
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v7, v1, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    .line 892
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v1, 0x0

    .line 894
    :goto_a
    if-lt v1, v10, :cond_11

    .line 901
    iget v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v1

    .line 903
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lcom/sonymobile/android/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 895
    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-char v11, v11

    .line 896
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 898
    :cond_12
    :goto_b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 894
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_13
    const/16 v12, 0x2b

    .line 896
    if-eq v11, v12, :cond_12

    const/16 v12, 0x23

    if-eq v11, v12, :cond_15

    :cond_14
    const/16 v12, 0x2a

    if-eq v11, v12, :cond_12

    goto :goto_c

    :cond_15
    if-nez v1, :cond_14

    goto :goto_b

    .line 912
    :cond_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string/jumbo v9, "tel:"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 915
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 929
    :cond_17
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 930
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method public appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PHOTO"

    .line 1775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    .line 1776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "ENCODING=BASE64"

    .line 1780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, ";"

    .line 1782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    invoke-direct {p0, v0, p2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    .line 1784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1788
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1790
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const-string/jumbo v0, "\r\n"

    .line 1791
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4b

    const-string/jumbo v1, " "

    .line 1793
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v0, v1

    move v4, v3

    move v2, v3

    .line 1795
    :goto_1
    if-lt v4, v7, :cond_1

    .line 1805
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    return-void

    :cond_0
    const-string/jumbo v1, "ENCODING=B"

    .line 1778
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1796
    :cond_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1797
    add-int/lit8 v2, v2, 0x1

    .line 1798
    if-gt v2, v0, :cond_2

    .line 1795
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "\r\n"

    .line 1799
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " "

    .line 1800
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    move v2, v3

    .line 1802
    goto :goto_2
.end method

.method public appendPhotos(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1339
    if-nez p1, :cond_1

    .line 1360
    :cond_0
    return-object p0

    .line 1340
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1341
    if-eqz v0, :cond_2

    const-string/jumbo v2, "data15"

    .line 1344
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1345
    if-eqz v0, :cond_2

    .line 1348
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->guessImageType([B)Ljava/lang/String;

    move-result-object v2

    .line 1349
    if-eqz v2, :cond_3

    .line 1354
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 1355
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1356
    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "vCard"

    const-string/jumbo v2, "Unknown photo type. Ignored."

    .line 1350
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1490
    invoke-direct {p0, p3}, Lcom/sonymobile/android/vcard/VCardBuilder;->tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/sonymobile/android/vcard/VCardBuilder$PostalStruct;

    move-result-object v0

    .line 1491
    if-eqz v0, :cond_1

    .line 1500
    iget-boolean v3, v0, Lcom/sonymobile/android/vcard/VCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    .line 1501
    iget-boolean v1, v0, Lcom/sonymobile/android/vcard/VCardBuilder$PostalStruct;->appendCharset:Z

    .line 1502
    iget-object v0, v0, Lcom/sonymobile/android/vcard/VCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    .line 1506
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    if-nez p4, :cond_3

    .line 1510
    :goto_1
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "vCard"

    .line 1534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown StructuredPostal type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_0
    :goto_2
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ADR"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1544
    :goto_3
    if-nez v1, :cond_5

    .line 1552
    :goto_4
    if-nez v3, :cond_6

    .line 1556
    :goto_5
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    return-void

    .line 1492
    :cond_1
    if-nez p5, :cond_2

    .line 1497
    return-void

    :cond_2
    const-string/jumbo v0, ""

    move v1, v2

    move v3, v2

    .line 1495
    goto :goto_0

    :cond_3
    const-string/jumbo v5, "PREF"

    .line 1508
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string/jumbo v2, "HOME"

    .line 1512
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    const-string/jumbo v2, "WORK"

    .line 1516
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1520
    :pswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v2

    invoke-static {v5}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "X-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1541
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    invoke-direct {p0, v4}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    goto :goto_3

    .line 1549
    :cond_5
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1553
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1510
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public appendPostals(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1016
    if-nez p1, :cond_1

    .line 1017
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_2

    .line 1032
    :goto_0
    return-object p0

    .line 1016
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1025
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_3

    .line 1028
    invoke-direct {p0, p1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendPostalsForGeneric(Ljava/util/List;)V

    goto :goto_0

    .line 1018
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ADR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1026
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendPostalsForDoCoMo(Ljava/util/List;)V

    goto :goto_0
.end method

.method public appendRelation(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-nez v0, :cond_1

    .line 1477
    :cond_0
    return-object p0

    .line 1469
    :cond_1
    if-eqz p1, :cond_0

    .line 1470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1471
    if-eqz v0, :cond_2

    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    .line 1474
    invoke-virtual {p0, v2, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public appendSipAddresses(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x0

    .line 1819
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-nez v1, :cond_0

    .line 1821
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-nez v0, :cond_2

    .line 1824
    return-object p0

    :cond_0
    move v2, v0

    .line 1827
    :goto_0
    if-nez p1, :cond_3

    .line 1860
    :cond_1
    return-object p0

    .line 1822
    :cond_2
    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    .line 1828
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    .line 1829
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1830
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1833
    if-nez v2, :cond_5

    const-string/jumbo v1, "sip:"

    .line 1844
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1848
    :goto_2
    iget v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "IMPP"

    .line 1856
    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "sip:"

    .line 1835
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_4
    const-string/jumbo v1, "X-SIP"

    .line 1842
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1836
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_4

    .line 1839
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1845
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const-string/jumbo v1, "TEL"

    goto :goto_3
.end method

.method public appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1613
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TEL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    if-eqz p1, :cond_1

    .line 1620
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1623
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1624
    packed-switch v0, :pswitch_data_0

    .line 1736
    :cond_0
    :goto_1
    :pswitch_0
    if-nez p4, :cond_8

    .line 1740
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1743
    invoke-direct {p0, v2}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1746
    :goto_3
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1748
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    return-void

    :cond_1
    const/4 v0, 0x7

    .line 1618
    goto :goto_0

    .line 1626
    :pswitch_1
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "HOME"

    aput-object v3, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1631
    :pswitch_2
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "WORK"

    aput-object v3, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1636
    :pswitch_3
    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "HOME"

    aput-object v4, v3, v5

    const-string/jumbo v4, "FAX"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1641
    :pswitch_4
    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "WORK"

    aput-object v4, v3, v5

    const-string/jumbo v4, "FAX"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :pswitch_5
    const-string/jumbo v1, "CELL"

    .line 1646
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1650
    :pswitch_6
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "PAGER"

    .line 1655
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "VOICE"

    .line 1653
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_7
    const-string/jumbo v1, "VOICE"

    .line 1660
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_8
    const-string/jumbo v1, "CAR"

    .line 1664
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_9
    const-string/jumbo v3, "WORK"

    .line 1669
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p4, v1

    .line 1671
    goto/16 :goto_1

    :pswitch_a
    const-string/jumbo v1, "ISDN"

    .line 1674
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_b
    move p4, v1

    .line 1679
    goto/16 :goto_1

    :pswitch_c
    const-string/jumbo v1, "FAX"

    .line 1682
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_d
    const-string/jumbo v1, "TLX"

    .line 1686
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1690
    :pswitch_e
    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "WORK"

    aput-object v4, v3, v5

    const-string/jumbo v4, "CELL"

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :pswitch_f
    const-string/jumbo v1, "WORK"

    .line 1695
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    iget-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v1, :cond_3

    const-string/jumbo v1, "PAGER"

    .line 1700
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v1, "VOICE"

    .line 1698
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_10
    const-string/jumbo v1, "MSG"

    .line 1705
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1709
    :pswitch_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1712
    invoke-static {p2}, Lcom/sonymobile/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1714
    iget-boolean v3, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-nez v3, :cond_6

    .line 1718
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1719
    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardUtils;->isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1721
    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v5

    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "X-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v1, "VOICE"

    .line 1711
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v1, "CELL"

    .line 1713
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1716
    :cond_6
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1720
    :cond_7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v1, "PREF"

    .line 1737
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1741
    :cond_9
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 1624
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public appendWebsites(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/sonymobile/android/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1278
    if-nez p1, :cond_1

    .line 1292
    :cond_0
    return-object p0

    .line 1279
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v2, "data1"

    .line 1280
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1281
    if-nez v0, :cond_3

    .line 1287
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "URL"

    .line 1288
    invoke-virtual {p0, v2, v0}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1282
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 196
    iput-boolean v1, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mEndAppended:Z

    const-string/jumbo v0, "BEGIN"

    const-string/jumbo v1, "VCARD"

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const-string/jumbo v0, "VERSION"

    const-string/jumbo v1, "2.1"

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "VERSION"

    const-string/jumbo v1, "4.0"

    .line 199
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "VERSION"

    const-string/jumbo v1, "3.0"

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "Unknown vCard version detected."

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2282
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mEndAppended:Z

    if-eqz v0, :cond_0

    .line 2292
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2283
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_1

    :goto_1
    const-string/jumbo v0, "END"

    const-string/jumbo v1, "VCARD"

    .line 2289
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardBuilder;->mEndAppended:Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "X-CLASS"

    const-string/jumbo v1, "PUBLIC"

    .line 2284
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "X-REDUCTION"

    const-string/jumbo v1, ""

    .line 2285
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "X-NO"

    const-string/jumbo v1, ""

    .line 2286
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "X-DCM-HMN-MODE"

    const-string/jumbo v1, ""

    .line 2287
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
