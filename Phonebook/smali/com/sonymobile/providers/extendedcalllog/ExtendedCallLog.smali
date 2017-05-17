.class public final Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog;
.super Ljava/lang/Object;
.source "ExtendedCallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog$CallsExtensions;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "somc_extended_call_log"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "content://somc_extended_call_log"

    .line 133
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
