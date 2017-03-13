.class Lcom/android/systemui/qs/QSDetailItems$H;
.super Landroid/os/Handler;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetailItems;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 222
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 221
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->-wrap2(Lcom/android/systemui/qs/QSDetailItems;[Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 230
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSDetailItems$Callback;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->-wrap0(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    goto :goto_0

    .line 231
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailItems$H;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_3

    :goto_1
    invoke-static {v2, v0}, Lcom/android/systemui/qs/QSDetailItems;->-wrap1(Lcom/android/systemui/qs/QSDetailItems;Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
