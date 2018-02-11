.class public interface abstract Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
.super Ljava/lang/Object;
.source "IDataUsageSummaryExt.java"


# static fields
.field public static final TAG_BG_DATA_APP_DIALOG_MESSAGE:Ljava/lang/String; = "bgDataDialogMessage"

.field public static final TAG_BG_DATA_APP_DIALOG_TITLE:Ljava/lang/String; = "bgDataDialogTitle"

.field public static final TAG_BG_DATA_MENU_DIALOG_MESSAGE:Ljava/lang/String; = "bgDataMenuDialogMessage"

.field public static final TAG_BG_DATA_RESTRICT_DENY_MESSAGE:Ljava/lang/String; = "bgDataRestrictDenyMessage"

.field public static final TAG_BG_DATA_SUMMARY:Ljava/lang/String; = "bgDataSummary"

.field public static final TAG_BG_DATA_SWITCH:Ljava/lang/String; = "bgDataSwitch"


# virtual methods
.method public abstract create(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract destroy()V
.end method

.method public abstract needToShowDialog()Z
.end method

.method public abstract setCurrentTab(I)V
.end method

.method public abstract setDataEnableClickListener(Landroid/app/Activity;Landroid/view/View;Landroid/widget/Switch;Landroid/view/View$OnClickListener;)Z
.end method
