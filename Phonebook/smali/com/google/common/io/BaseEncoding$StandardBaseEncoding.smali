.class final Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
.super Lcom/google/common/io/BaseEncoding;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StandardBaseEncoding"
.end annotation


# instance fields
.field private final alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

.field private transient lowerCase:Lcom/google/common/io/BaseEncoding;

.field private final paddingChar:Ljava/lang/Character;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private transient upperCase:Lcom/google/common/io/BaseEncoding;


# direct methods
.method static synthetic -get0(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Lcom/google/common/io/BaseEncoding$Alphabet;
    .locals 1

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    return-object v0
.end method

.method constructor <init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V
    .locals 4
    .param p1, "alphabet"    # Lcom/google/common/io/BaseEncoding$Alphabet;
    .param p2, "paddingChar"    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 614
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding;-><init>()V

    .line 615
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 616
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 617
    :goto_0
    const-string/jumbo v3, "Padding character %s was already in alphabet"

    .line 616
    new-array v1, v1, [Ljava/lang/Object;

    .line 617
    aput-object p2, v1, v2

    .line 616
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 618
    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    .line 614
    return-void

    :cond_0
    move v0, v1

    .line 616
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alphabetChars"    # Ljava/lang/String;
    .param p3, "paddingChar"    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 611
    new-instance v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    .line 610
    return-void
.end method


# virtual methods
.method decodingStream(Lcom/google/common/io/GwtWorkarounds$CharInput;)Lcom/google/common/io/GwtWorkarounds$ByteInput;
    .locals 1
    .param p1, "reader"    # Lcom/google/common/io/GwtWorkarounds$CharInput;

    .prologue
    .line 684
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;-><init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Lcom/google/common/io/GwtWorkarounds$CharInput;)V

    return-object v0
.end method

.method encodingStream(Lcom/google/common/io/GwtWorkarounds$CharOutput;)Lcom/google/common/io/GwtWorkarounds$ByteOutput;
    .locals 1
    .param p1, "out"    # Lcom/google/common/io/GwtWorkarounds$CharOutput;

    .prologue
    .line 633
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;-><init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Lcom/google/common/io/GwtWorkarounds$CharOutput;)V

    return-object v0
.end method

.method public lowerCase()Lcom/google/common/io/BaseEncoding;
    .locals 3

    .prologue
    .line 772
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->lowerCase:Lcom/google/common/io/BaseEncoding;

    .line 773
    .local v1, "result":Lcom/google/common/io/BaseEncoding;
    if-nez v1, :cond_0

    .line 774
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v2}, Lcom/google/common/io/BaseEncoding$Alphabet;->lowerCase()Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v0

    .line 776
    .local v0, "lower":Lcom/google/common/io/BaseEncoding$Alphabet;
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    if-ne v0, v2, :cond_1

    move-object v1, p0

    .line 775
    .end local v1    # "result":Lcom/google/common/io/BaseEncoding;
    :goto_0
    iput-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->lowerCase:Lcom/google/common/io/BaseEncoding;

    .line 778
    .end local v0    # "lower":Lcom/google/common/io/BaseEncoding$Alphabet;
    .restart local v1    # "result":Lcom/google/common/io/BaseEncoding;
    :cond_0
    return-object v1

    .line 776
    .restart local v0    # "lower":Lcom/google/common/io/BaseEncoding$Alphabet;
    :cond_1
    new-instance v1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .end local v1    # "result":Lcom/google/common/io/BaseEncoding;
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-direct {v1, v0, v2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    goto :goto_0
.end method

.method maxDecodedSize(I)I
    .locals 4
    .param p1, "chars"    # I

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method maxEncodedSize(I)I
    .locals 3
    .param p1, "bytes"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v1, v2}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public omitPadding()Lcom/google/common/io/BaseEncoding;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 735
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-nez v0, :cond_0

    .end local p0    # "this":Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
    :cond_0
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    move-object p0, v0

    goto :goto_0
.end method

.method padding()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v1}, Lcom/google/common/io/BaseEncoding$Alphabet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    const/16 v2, 0x8

    rem-int v1, v2, v1

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-nez v1, :cond_1

    .line 787
    const-string/jumbo v1, ".omitPadding()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 789
    :cond_1
    const-string/jumbo v1, ".withPadChar("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public upperCase()Lcom/google/common/io/BaseEncoding;
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->upperCase:Lcom/google/common/io/BaseEncoding;

    .line 762
    .local v0, "result":Lcom/google/common/io/BaseEncoding;
    if-nez v0, :cond_0

    .line 763
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v2}, Lcom/google/common/io/BaseEncoding$Alphabet;->upperCase()Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v1

    .line 765
    .local v1, "upper":Lcom/google/common/io/BaseEncoding$Alphabet;
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    if-ne v1, v2, :cond_1

    move-object v0, p0

    .line 764
    .end local v0    # "result":Lcom/google/common/io/BaseEncoding;
    :goto_0
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->upperCase:Lcom/google/common/io/BaseEncoding;

    .line 767
    .end local v1    # "upper":Lcom/google/common/io/BaseEncoding$Alphabet;
    .restart local v0    # "result":Lcom/google/common/io/BaseEncoding;
    :cond_0
    return-object v0

    .line 765
    .restart local v1    # "upper":Lcom/google/common/io/BaseEncoding$Alphabet;
    :cond_1
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .end local v0    # "result":Lcom/google/common/io/BaseEncoding;
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    goto :goto_0
.end method

.method public withPadChar(C)Lcom/google/common/io/BaseEncoding;
    .locals 3
    .param p1, "padChar"    # C

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    const/16 v1, 0x8

    rem-int v0, v1, v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-ne v0, p1, :cond_1

    .line 742
    :cond_0
    return-object p0

    .line 744
    :cond_1
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    return-object v0
.end method

.method public withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
    .locals 2
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "afterEveryChars"    # I

    .prologue
    .line 750
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 752
    const-string/jumbo v1, "Separator cannot contain alphabet or padding characters"

    .line 751
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 753
    new-instance v0, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding;Ljava/lang/String;I)V

    return-object v0
.end method
