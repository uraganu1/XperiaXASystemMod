.class public Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;
.super Ljava/lang/Exception;
.source "AggregateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TooManyLinkException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;->serialVersionUID:J

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "Max number raw contact of a contact:15"

    return-object v0
.end method
