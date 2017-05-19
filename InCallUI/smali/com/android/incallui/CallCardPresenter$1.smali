.class Lcom/android/incallui/CallCardPresenter$1;
.super Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;
.source "CallCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-direct {p0}, Lcom/android/incallui/ContactInfoCache$ContactInfoUpdatedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoUpdated(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-static {v0, p1}, Lcom/android/incallui/CallCardPresenter;->-wrap0(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;)V

    .line 1120
    return-void
.end method
