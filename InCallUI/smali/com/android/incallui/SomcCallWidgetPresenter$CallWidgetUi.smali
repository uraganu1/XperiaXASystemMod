.class public interface abstract Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;
.super Ljava/lang/Object;
.source "SomcCallWidgetPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcCallWidgetPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallWidgetUi"
.end annotation


# virtual methods
.method public abstract cleanUpWidgets()V
.end method

.method public abstract configureWidgetMode(Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;Z)V
.end method

.method public abstract showWidget(Landroid/widget/RemoteViews;I)V
.end method

.method public abstract updateWidgetMenu(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation
.end method
