.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi23Impl;
.super Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;
.source "ActivityOptionsCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0

    .line 277
    invoke-direct {p0, p1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;-><init>(Landroid/app/ActivityOptions;)V

    return-void
.end method


# virtual methods
.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0

    .line 282
    iget-object p0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi23Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    return-void
.end method
