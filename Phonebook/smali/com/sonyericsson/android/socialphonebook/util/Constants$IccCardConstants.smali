.class public Lcom/sonyericsson/android/socialphonebook/util/Constants$IccCardConstants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IccCardConstants"
.end annotation


# static fields
.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
