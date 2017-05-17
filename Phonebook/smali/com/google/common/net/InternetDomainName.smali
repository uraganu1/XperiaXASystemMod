.class public final Lcom/google/common/net/InternetDomainName;
.super Ljava/lang/Object;
.source "InternetDomainName.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final DASH_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final DOT_JOINER:Lcom/google/common/base/Joiner;

.field private static final DOT_REGEX:Ljava/lang/String; = "\\."

.field private static final DOT_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final MAX_DOMAIN_PART_LENGTH:I = 0x3f

.field private static final MAX_LENGTH:I = 0xfd

.field private static final MAX_PARTS:I = 0x7f

.field private static final NO_PUBLIC_SUFFIX_FOUND:I = -0x1

.field private static final PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;


# instance fields
.field private final name:Ljava/lang/String;

.field private final parts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final publicSuffixIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x2e

    .line 80
    const-string/jumbo v0, ".\u3002\uff0e\uff61"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/google/common/net/InternetDomainName;->DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 81
    invoke-static {v1}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->DOT_SPLITTER:Lcom/google/common/base/Splitter;

    .line 82
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->DOT_JOINER:Lcom/google/common/base/Joiner;

    .line 241
    const-string/jumbo v0, "-_"

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InternetDomainName;->DASH_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 244
    sget-object v0, Lcom/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

    sget-object v1, Lcom/google/common/net/InternetDomainName;->DASH_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    .line 243
    sput-object v0, Lcom/google/common/net/InternetDomainName;->PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 77
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    sget-object v0, Lcom/google/common/net/InternetDomainName;->DOTS_MATCHER:Lcom/google/common/base/CharMatcher;

    const/16 v3, 0x2e

    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xfd

    if-gt v0, v3, :cond_1

    move v0, v1

    .line 150
    :goto_0
    const-string/jumbo v3, "Domain name too long: \'%s\':"

    .line 149
    new-array v4, v1, [Ljava/lang/Object;

    .line 150
    aput-object p1, v4, v2

    .line 149
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iput-object p1, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/google/common/net/InternetDomainName;->DOT_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    .line 154
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_2

    move v0, v1

    .line 155
    :goto_1
    const-string/jumbo v3, "Domain has too many parts: \'%s\'"

    .line 154
    new-array v4, v1, [Ljava/lang/Object;

    .line 155
    aput-object p1, v4, v2

    .line 154
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/net/InternetDomainName;->validateSyntax(Ljava/util/List;)Z

    move-result v0

    const-string/jumbo v3, "Not a valid domain name: \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-direct {p0}, Lcom/google/common/net/InternetDomainName;->findPublicSuffix()I

    move-result v0

    iput v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    .line 137
    return-void

    :cond_1
    move v0, v2

    .line 149
    goto :goto_0

    :cond_2
    move v0, v2

    .line 154
    goto :goto_1
.end method

.method private ancestor(I)Lcom/google/common/net/InternetDomainName;
    .locals 3
    .param p1, "levels"    # I

    .prologue
    .line 457
    sget-object v0, Lcom/google/common/net/InternetDomainName;->DOT_JOINER:Lcom/google/common/base/Joiner;

    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method

.method private findPublicSuffix()I
    .locals 5

    .prologue
    .line 168
    iget-object v3, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    .line 170
    .local v2, "partsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 171
    sget-object v3, Lcom/google/common/net/InternetDomainName;->DOT_JOINER:Lcom/google/common/base/Joiner;

    iget-object v4, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v1, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "ancestorName":Ljava/lang/String;
    sget-object v3, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->EXACT:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    return v1

    .line 180
    :cond_0
    sget-object v3, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->EXCLUDED:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    add-int/lit8 v3, v1, 0x1

    return v3

    .line 184
    :cond_1
    invoke-static {v0}, Lcom/google/common/net/InternetDomainName;->matchesWildcardPublicSuffix(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    return v1

    .line 170
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "ancestorName":Ljava/lang/String;
    :cond_3
    const/4 v3, -0x1

    return v3
.end method

.method public static from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v1, Lcom/google/common/net/InternetDomainName;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/common/net/InternetDomainName;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 498
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    const/4 v1, 0x1

    return v1

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method private static matchesWildcardPublicSuffix(Ljava/lang/String;)Z
    .locals 3
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 510
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "pieces":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/google/thirdparty/publicsuffix/PublicSuffixPatterns;->UNDER:Lcom/google/common/collect/ImmutableMap;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static validatePart(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "part"    # Ljava/lang/String;
    .param p1, "isFinalPart"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_1

    .line 260
    :cond_0
    return v3

    .line 273
    :cond_1
    sget-object v1, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, p0}, Lcom/google/common/base/CharMatcher;->retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "asciiChars":Ljava/lang/String;
    sget-object v1, Lcom/google/common/net/InternetDomainName;->PART_CHAR_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, v0}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    return v3

    .line 281
    :cond_2
    sget-object v1, Lcom/google/common/net/InternetDomainName;->DASH_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 282
    sget-object v1, Lcom/google/common/net/InternetDomainName;->DASH_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    .line 281
    if-eqz v1, :cond_4

    .line 283
    :cond_3
    return v3

    .line 294
    :cond_4
    if-eqz p1, :cond_5

    sget-object v1, Lcom/google/common/base/CharMatcher;->DIGIT:Lcom/google/common/base/CharMatcher;

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    return v3

    .line 298
    :cond_5
    return v4
.end method

.method private static validateSyntax(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 227
    .local v1, "lastIndex":I
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/common/net/InternetDomainName;->validatePart(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    return v4

    .line 231
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 232
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    .local v2, "part":Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/google/common/net/InternetDomainName;->validatePart(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 234
    return v4

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "part":Ljava/lang/String;
    :cond_2
    return v5
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;
    .locals 2
    .param p1, "leftParts"    # Ljava/lang/String;

    .prologue
    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InternetDomainName;->from(Ljava/lang/String;)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 531
    if-ne p1, p0, :cond_0

    .line 532
    const/4 v1, 0x1

    return v1

    .line 535
    :cond_0
    instance-of v1, p1, Lcom/google/common/net/InternetDomainName;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 536
    check-cast v0, Lcom/google/common/net/InternetDomainName;

    .line 537
    .local v0, "that":Lcom/google/common/net/InternetDomainName;
    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 540
    .end local v0    # "that":Lcom/google/common/net/InternetDomainName;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hasParent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 432
    iget-object v1, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPublicSuffix()Z
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPublicSuffix()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 324
    iget v1, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTopPrivateDomain()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 395
    iget v1, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderPublicSuffix()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 371
    iget v1, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public parent()Lcom/google/common/net/InternetDomainName;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 444
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->hasParent()Z

    move-result v0

    const-string/jumbo v1, "Domain \'%s\' has no parent"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 445
    invoke-direct {p0, v5}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method

.method public parts()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->parts:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public publicSuffix()Lcom/google/common/net/InternetDomainName;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->hasPublicSuffix()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public topPrivateDomain()Lcom/google/common/net/InternetDomainName;
    .locals 5

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isTopPrivateDomain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    return-object p0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/net/InternetDomainName;->isUnderPublicSuffix()Z

    move-result v0

    const-string/jumbo v1, "Not under a public suffix: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/net/InternetDomainName;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget v0, p0, Lcom/google/common/net/InternetDomainName;->publicSuffixIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/common/net/InternetDomainName;->ancestor(I)Lcom/google/common/net/InternetDomainName;

    move-result-object v0

    return-object v0
.end method
