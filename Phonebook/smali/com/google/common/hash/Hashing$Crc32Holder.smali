.class Lcom/google/common/hash/Hashing$Crc32Holder;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Crc32Holder"
.end annotation


# static fields
.field static final CRC_32:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;

    const-string/jumbo v1, "Hashing.crc32()"

    invoke-static {v0, v1}, Lcom/google/common/hash/Hashing;->-wrap0(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    .line 242
    sput-object v0, Lcom/google/common/hash/Hashing$Crc32Holder;->CRC_32:Lcom/google/common/hash/HashFunction;

    .line 241
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
