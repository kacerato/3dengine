.class public final synthetic LE1/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final a:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/O;->a:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LE1/O;->a:Landroid/location/Location;

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    invoke-virtual {p1, v0}, LB1/A;->F0(Landroid/location/Location;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void
.end method
