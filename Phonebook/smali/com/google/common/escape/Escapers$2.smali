.class final Lcom/google/common/escape/Escapers$2;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/escape/Escapers;->wrap(Lcom/google/common/escape/CharEscaper;)Lcom/google/common/escape/UnicodeEscaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$escaper:Lcom/google/common/escape/CharEscaper;


# direct methods
.method constructor <init>(Lcom/google/common/escape/CharEscaper;)V
    .locals 0
    .param p1, "val$escaper"    # Lcom/google/common/escape/CharEscaper;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected escape(I)[C
    .locals 12
    .param p1, "cp"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 232
    const/high16 v7, 0x10000

    if-ge p1, v7, :cond_0

    .line 233
    iget-object v7, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    int-to-char v8, p1

    invoke-virtual {v7, v8}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v7

    return-object v7

    .line 239
    :cond_0
    const/4 v7, 0x2

    new-array v6, v7, [C

    .line 240
    .local v6, "surrogateChars":[C
    invoke-static {p1, v6, v10}, Ljava/lang/Character;->toChars(I[CI)I

    .line 241
    iget-object v7, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    aget-char v8, v6, v10

    invoke-virtual {v7, v8}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 242
    .local v0, "hiChars":[C
    iget-object v7, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    aget-char v8, v6, v11

    invoke-virtual {v7, v8}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v2

    .line 248
    .local v2, "loChars":[C
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 250
    return-object v9

    .line 253
    :cond_1
    if-eqz v0, :cond_2

    array-length v1, v0

    .line 254
    .local v1, "hiCount":I
    :goto_0
    if-eqz v2, :cond_3

    array-length v3, v2

    .line 255
    .local v3, "loCount":I
    :goto_1
    add-int v7, v1, v3

    new-array v5, v7, [C

    .line 256
    .local v5, "output":[C
    if-eqz v0, :cond_4

    .line 258
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_2
    array-length v7, v0

    if-ge v4, v7, :cond_5

    .line 259
    aget-char v7, v0, v4

    aput-char v7, v5, v4

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 253
    .end local v1    # "hiCount":I
    .end local v3    # "loCount":I
    .end local v4    # "n":I
    .end local v5    # "output":[C
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "hiCount":I
    goto :goto_0

    .line 254
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "loCount":I
    goto :goto_1

    .line 262
    .restart local v5    # "output":[C
    :cond_4
    aget-char v7, v6, v10

    aput-char v7, v5, v10

    .line 264
    :cond_5
    if-eqz v2, :cond_6

    .line 265
    const/4 v4, 0x0

    .restart local v4    # "n":I
    :goto_3
    array-length v7, v2

    if-ge v4, v7, :cond_7

    .line 266
    add-int v7, v1, v4

    aget-char v8, v2, v4

    aput-char v8, v5, v7

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 269
    .end local v4    # "n":I
    :cond_6
    aget-char v7, v6, v11

    aput-char v7, v5, v1

    .line 271
    :cond_7
    return-object v5
.end method
