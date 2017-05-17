.class Lcom/google/common/hash/Hashing$Sha512Holder;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sha512Holder"
.end annotation


# static fields
.field static final SHA_512:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    const-string/jumbo v1, "SHA-512"

    const-string/jumbo v2, "Hashing.sha512()"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sput-object v0, Lcom/google/common/hash/Hashing$Sha512Holder;->SHA_512:Lcom/google/common/hash/HashFunction;

    .line 223
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
