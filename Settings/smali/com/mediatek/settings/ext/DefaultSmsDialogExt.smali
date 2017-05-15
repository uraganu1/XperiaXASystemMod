.class public Lcom/mediatek/settings/ext/DefaultSmsDialogExt;
.super Landroid/content/ContextWrapper;
.source "DefaultSmsDialogExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISmsDialogExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSmsDialogExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public buildMessage(Lcom/android/internal/app/AlertController$AlertParams;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "oldName"    # Ljava/lang/String;

    .prologue
    .line 35
    return-void
.end method

.method public onClick(Ljava/lang/String;Lcom/android/internal/app/AlertActivity;Landroid/content/Context;I)Z
    .locals 1
    .param p1, "newPackageName"    # Ljava/lang/String;
    .param p2, "activity"    # Lcom/android/internal/app/AlertActivity;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "which"    # I

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/android/internal/app/AlertActivity;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "context"    # Lcom/android/internal/app/AlertActivity;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
