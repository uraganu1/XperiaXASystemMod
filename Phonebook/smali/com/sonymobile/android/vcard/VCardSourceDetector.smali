.class public Lcom/sonymobile/android/vcard/VCardSourceDetector;
.super Ljava/lang/Object;
.source "VCardSourceDetector.java"

# interfaces
.implements Lcom/sonymobile/android/vcard/VCardInterpreter;


# static fields
.field private static APPLE_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static FOMA_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final PARSE_TYPE_APPLE:I = 0x1

.field private static final PARSE_TYPE_DOCOMO_FOMA:I = 0x3

.field private static final PARSE_TYPE_MOBILE_PHONE_JP:I = 0x2

.field public static final PARSE_TYPE_UNKNOWN:I = 0x0

.field private static final PARSE_TYPE_WINDOWS_MOBILE_V65_JP:I = 0x4

.field private static TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

.field private static WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mParseType:I

.field private mSpecifiedCharset:Ljava/lang/String;

.field private mVcardType:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "X-PHONETIC-FIRST-NAME"

    aput-object v2, v1, v3

    const-string/jumbo v2, "X-PHONETIC-MIDDLE-NAME"

    aput-object v2, v1, v4

    const-string/jumbo v2, "X-PHONETIC-LAST-NAME"

    aput-object v2, v1, v5

    const-string/jumbo v2, "X-ABADR"

    aput-object v2, v1, v6

    const-string/jumbo v2, "X-ABUID"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->APPLE_SIGNS:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "X-GNO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "X-GN"

    aput-object v2, v1, v4

    const-string/jumbo v2, "X-REDUCTION"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "X-MICROSOFT-ASST_TEL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "X-MICROSOFT-ASSISTANT"

    aput-object v2, v1, v4

    const-string/jumbo v2, "X-MICROSOFT-OFFICELOC"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "X-SD-VERN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "X-SD-FORMAT_VER"

    aput-object v2, v1, v4

    const-string/jumbo v2, "X-SD-CATEGORIES"

    aput-object v2, v1, v5

    const-string/jumbo v2, "X-SD-CLASS"

    aput-object v2, v1, v6

    const-string/jumbo v2, "X-SD-DCREATED"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "X-SD-DESCRIPTION"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->FOMA_SIGNS:Ljava/util/Set;

    const-string/jumbo v0, "X-SD-CHAR_CODE"

    .line 64
    sput-object v0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mParseType:I

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mVersion:I

    return-void
.end method


# virtual methods
.method public getEstimatedCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mParseType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 195
    return-object v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "SHIFT_JIS"

    .line 191
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "UTF-8"

    .line 193
    return-object v0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getEstimatedType()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mParseType:I

    packed-switch v0, :pswitch_data_0

    .line 163
    :pswitch_0
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mVersion:I

    if-eqz v0, :cond_0

    .line 165
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mVersion:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 167
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mVersion:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 170
    return v2

    :pswitch_1
    const v0, 0x38000008

    .line 157
    return v0

    :pswitch_2
    const v0, 0x18000008

    .line 159
    return v0

    :cond_0
    const/high16 v0, -0x40000000    # -2.0f

    .line 164
    return v0

    :cond_1
    const v0, -0x3fffffff    # -2.0000002f

    .line 166
    return v0

    :cond_2
    const v0, -0x3ffffffe    # -2.0000005f

    .line 168
    return v0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEntryEnded()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onEntryStarted()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onPropertyCreated(Lcom/sonymobile/android/vcard/VCardProperty;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p1}, Lcom/sonymobile/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lcom/sonymobile/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v2, "VERSION"

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 124
    :cond_0
    sget-object v2, Lcom/sonymobile/android/vcard/VCardSourceDetector;->TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 130
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mParseType:I

    if-nez v0, :cond_9

    .line 133
    sget-object v0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 135
    sget-object v0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->FOMA_SIGNS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 137
    sget-object v0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 140
    :cond_2
    iput v6, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mParseType:I

    .line 144
    :cond_3
    :goto_1
    return-void

    .line 112
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 114
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "2.1"

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "3.0"

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "4.0"

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "vCard"

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid version string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_5
    iput v3, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_0

    .line 118
    :cond_6
    iput v5, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_0

    .line 120
    :cond_7
    iput v6, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_0

    .line 125
    :cond_8
    iput v7, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mParseType:I

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 127
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_9
    return-void

    :cond_a
    const/4 v0, 0x4

    .line 134
    iput v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_1

    .line 136
    :cond_b
    iput v7, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_1

    :cond_c
    const-string/jumbo v0, "TEL"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 141
    :goto_2
    sget-object v0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->APPLE_SIGNS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    iput v5, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_1

    .line 137
    :cond_d
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mVcardType:I

    const v2, 0x18000008

    if-eq v0, v2, :cond_2

    goto :goto_2
.end method

.method public onVCardEnded()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onVCardStarted()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public setVcardType(I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lcom/sonymobile/android/vcard/VCardSourceDetector;->mVcardType:I

    .line 148
    return-void
.end method
