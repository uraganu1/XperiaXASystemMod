.class final Lcom/google/common/io/CharStreams$NullWriter;
.super Ljava/io/Writer;
.source "CharStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullWriter"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/io/CharStreams$NullWriter;


# direct methods
.method static synthetic -get0()Lcom/google/common/io/CharStreams$NullWriter;
    .locals 1

    sget-object v0, Lcom/google/common/io/CharStreams$NullWriter;->INSTANCE:Lcom/google/common/io/CharStreams$NullWriter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lcom/google/common/io/CharStreams$NullWriter;

    invoke-direct {v0}, Lcom/google/common/io/CharStreams$NullWriter;-><init>()V

    sput-object v0, Lcom/google/common/io/CharStreams$NullWriter;->INSTANCE:Lcom/google/common/io/CharStreams$NullWriter;

    .line 445
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 487
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 475
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 481
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 482
    return-object p0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    const-string/jumbo v0, "CharStreams.nullWriter()"

    return-object v0
.end method

.method public write(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 450
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 470
    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 469
    return-void
.end method

.method public write([C)V
    .locals 0
    .param p1, "cbuf"    # [C

    .prologue
    .line 455
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method public write([CII)V
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 460
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 459
    return-void
.end method
