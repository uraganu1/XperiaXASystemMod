.class Lcom/sonymobile/jms/conversation/Session$SessionInfo;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/conversation/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionInfo"
.end annotation


# instance fields
.field protected mEventListener:Landroid/os/IBinder;

.field protected mRcsSessionId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/jms/conversation/Session$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/jms/conversation/Session$1;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonymobile/jms/conversation/Session$SessionInfo;-><init>()V

    return-void
.end method
