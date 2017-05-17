.class Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;
.super Ljava/lang/Object;
.source "BaseEncoding.java"

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$ByteInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->decodingStream(Lcom/google/common/io/GwtWorkarounds$CharInput;)Lcom/google/common/io/GwtWorkarounds$ByteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bitBuffer:I

.field bitBufferLength:I

.field hitPadding:Z

.field final paddingMatcher:Lcom/google/common/base/CharMatcher;

.field readChars:I

.field final synthetic this$1:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

.field final synthetic val$reader:Lcom/google/common/io/GwtWorkarounds$CharInput;


# direct methods
.method constructor <init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Lcom/google/common/io/GwtWorkarounds$CharInput;)V
    .locals 1
    .param p1, "this$1"    # Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
    .param p2, "val$reader"    # Lcom/google/common/io/GwtWorkarounds$CharInput;

    .prologue
    const/4 v0, 0x0

    .line 685
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$1:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Lcom/google/common/io/GwtWorkarounds$CharInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 687
    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    .line 688
    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    .line 689
    iput-boolean v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    .line 690
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$1:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->paddingMatcher:Lcom/google/common/base/CharMatcher;

    .line 685
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Lcom/google/common/io/GwtWorkarounds$CharInput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$CharInput;->close()V

    .line 727
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 695
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->val$reader:Lcom/google/common/io/GwtWorkarounds$CharInput;

    invoke-interface {v2}, Lcom/google/common/io/GwtWorkarounds$CharInput;->read()I

    move-result v1

    .line 696
    .local v1, "readChar":I
    if-ne v1, v4, :cond_3

    .line 697
    iget-boolean v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$1:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-static {v2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->-get0(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v2

    iget v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 700
    :cond_1
    return v4

    .line 698
    :cond_2
    new-instance v2, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid input length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 702
    :cond_3
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    .line 703
    int-to-char v0, v1

    .line 704
    .local v0, "ch":C
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->paddingMatcher:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v2, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 705
    iget-boolean v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-nez v2, :cond_4

    .line 706
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    if-eq v2, v5, :cond_5

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$1:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-static {v2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->-get0(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v2

    iget v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 709
    :cond_4
    iput-boolean v5, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    goto :goto_0

    .line 707
    :cond_5
    new-instance v2, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Padding cannot start at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 710
    :cond_6
    iget-boolean v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->hitPadding:Z

    if-eqz v2, :cond_7

    .line 711
    new-instance v2, Lcom/google/common/io/BaseEncoding$DecodingException;

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected padding character but found \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->readChars:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-direct {v2, v3}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 714
    :cond_7
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$1:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-static {v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->-get0(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v3

    iget v3, v3, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 715
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$1:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-static {v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->-get0(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    .line 716
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->this$1:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    invoke-static {v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->-get0(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;)Lcom/google/common/io/BaseEncoding$Alphabet;

    move-result-object v3

    iget v3, v3, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    .line 718
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 719
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    .line 720
    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBuffer:I

    iget v3, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$2;->bitBufferLength:I

    shr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    return v2
.end method
