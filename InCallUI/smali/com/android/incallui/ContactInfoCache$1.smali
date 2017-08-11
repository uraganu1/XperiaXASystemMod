.class Lcom/android/incallui/ContactInfoCache$1;
.super Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$1;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Lcom/mediatek/incallui/CallDetailChangeHandler$CallDetailChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneNumberChanged(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$1;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v0, p1}, Lcom/android/incallui/ContactInfoCache;->-wrap2(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;)V

    .line 808
    return-void
.end method

.method public onVolteMarkedEccChanged(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$1;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v0, p1}, Lcom/android/incallui/ContactInfoCache;->-wrap1(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;)V

    .line 804
    return-void
.end method
