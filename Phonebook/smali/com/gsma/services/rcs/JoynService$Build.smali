.class public Lcom/gsma/services/rcs/JoynService$Build;
.super Ljava/lang/Object;
.source "JoynService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/JoynService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/JoynService$Build$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final API_CODENAME:Ljava/lang/String; = "GSMA"

.field public static final API_INCREMENTAL:I = 0x0

.field public static final API_VERSION:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method
