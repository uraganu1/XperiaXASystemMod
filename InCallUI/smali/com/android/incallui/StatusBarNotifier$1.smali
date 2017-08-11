.class Lcom/android/incallui/StatusBarNotifier$1;
.super Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/StatusBarNotifier;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$1;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {p0}, Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoUpdated(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$1;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-static {v0}, Lcom/android/incallui/StatusBarNotifier;->-wrap1(Lcom/android/incallui/StatusBarNotifier;)V

    .line 874
    return-void
.end method
