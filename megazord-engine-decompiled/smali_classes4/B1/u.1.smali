.class public final LB1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/f$b<",
        "LE1/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/location/Location;


# direct methods
.method public constructor <init>(LB1/v;Landroid/location/Location;)V
    .locals 0

    iput-object p2, p0, LB1/u;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LE1/r;

    iget-object v0, p0, LB1/u;->a:Landroid/location/Location;

    invoke-interface {p1, v0}, LE1/r;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
