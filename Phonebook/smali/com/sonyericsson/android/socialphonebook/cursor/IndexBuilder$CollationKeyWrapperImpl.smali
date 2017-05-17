.class final Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;
.super Ljava/lang/Object;
.source "IndexBuilder.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollationKeyWrapperImpl"
.end annotation


# instance fields
.field private mCollationKey:Ljava/text/CollationKey;


# direct methods
.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;Ljava/text/CollationKey;)Ljava/text/CollationKey;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;->mCollationKey:Ljava/text/CollationKey;

    return-object p1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollationKey()Ljava/text/CollationKey;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/cursor/IndexBuilder$CollationKeyWrapperImpl;->mCollationKey:Ljava/text/CollationKey;

    return-object v0
.end method
