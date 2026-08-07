.class public final synthetic Ly0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/a$a;


# instance fields
.field public final synthetic a:Ly0/s;


# direct methods
.method public synthetic constructor <init>(Ly0/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/q;->a:Ly0/s;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly0/q;->a:Ly0/s;

    invoke-static {v0}, Ly0/s;->c(Ly0/s;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
