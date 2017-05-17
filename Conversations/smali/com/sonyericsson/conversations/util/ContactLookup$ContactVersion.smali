.class Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;
.super Ljava/lang/Object;
.source "ContactLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactVersion"
.end annotation


# instance fields
.field mId:I

.field mVersion:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/conversations/util/ContactLookup$ContactVersion;-><init>()V

    return-void
.end method
